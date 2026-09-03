#!/usr/bin/env ruby

require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).join("..").expand_path
SKILLS_ROOT = ROOT.join("skills")
MAX_SKILL_LINES = 500

errors = []
skill_names = {}

def check_markdown_links(markdown_file, allowed_root, repository_root, errors)
  markdown_file.read.scan(/\[[^\]]*\]\(([^)]+)\)/).flatten.each do |target|
    clean_target = target.strip.sub(/\A</, "").sub(/>\z/, "").split("#", 2).first
    next if clean_target.empty? || clean_target.match?(/\A(?:https?:|mailto:)/)

    resolved = markdown_file.dirname.join(clean_target).cleanpath
    inside_root = resolved == allowed_root || resolved.to_s.start_with?(allowed_root.to_s + File::SEPARATOR)
    unless inside_root && resolved.exist?
      errors << "#{markdown_file.relative_path_from(repository_root)}: broken relative link '#{target}'"
    end
  end
end

def parse_frontmatter(path)
  text = path.read
  match = text.match(/\A---\s*\n(.*?)\n---\s*(?:\n|\z)/m)
  raise "missing YAML frontmatter" unless match

  data = YAML.safe_load(match[1], permitted_classes: [], aliases: false)
  raise "frontmatter must be a mapping" unless data.is_a?(Hash)

  data
end

unless SKILLS_ROOT.directory?
  errors << "skills/: directory is missing"
end

skill_dirs = SKILLS_ROOT.directory? ? SKILLS_ROOT.children.select(&:directory?).sort : []
errors << "skills/: no skill directories found" if skill_dirs.empty?

skill_dirs.each do |skill_dir|
  skill_file = skill_dir.join("SKILL.md")
  unless skill_file.file?
    errors << "#{skill_dir.relative_path_from(ROOT)}: SKILL.md is missing"
    next
  end

  begin
    frontmatter = parse_frontmatter(skill_file)
    name = frontmatter["name"]
    description = frontmatter["description"]

    errors << "#{skill_file.relative_path_from(ROOT)}: name is missing" unless name.is_a?(String) && !name.empty?
    errors << "#{skill_file.relative_path_from(ROOT)}: description is missing" unless description.is_a?(String) && !description.strip.empty?

    if name.is_a?(String) && name != skill_dir.basename.to_s
      errors << "#{skill_file.relative_path_from(ROOT)}: name '#{name}' does not match directory '#{skill_dir.basename}'"
    end

    if name.is_a?(String) && skill_names.key?(name)
      errors << "#{skill_file.relative_path_from(ROOT)}: duplicate skill name '#{name}'"
    else
      skill_names[name] = skill_file if name.is_a?(String)
    end
  rescue Psych::SyntaxError => error
    errors << "#{skill_file.relative_path_from(ROOT)}: invalid YAML frontmatter: #{error.message.lines.first.strip}"
  rescue StandardError => error
    errors << "#{skill_file.relative_path_from(ROOT)}: #{error.message}"
  end

  line_count = skill_file.each_line.count
  if line_count > MAX_SKILL_LINES
    errors << "#{skill_file.relative_path_from(ROOT)}: #{line_count} lines exceeds the #{MAX_SKILL_LINES}-line limit"
  end

  skill_dir.glob("**/*.md").sort.each do |markdown_file|
    check_markdown_links(markdown_file, skill_dir, ROOT, errors)
  end

  skill_dir.glob("evals/**/*.{yaml,yml}").sort.each do |yaml_file|
    begin
      YAML.safe_load(yaml_file.read, permitted_classes: [], aliases: false)
    rescue Psych::SyntaxError => error
      errors << "#{yaml_file.relative_path_from(ROOT)}: invalid YAML: #{error.message.lines.first.strip}"
    end
  end

  normalized_paths = {}
  skill_dir.glob("**/*", File::FNM_DOTMATCH).reject(&:directory?).each do |path|
    relative = path.relative_path_from(skill_dir).to_s.downcase
    if normalized_paths.key?(relative)
      errors << "#{skill_dir.relative_path_from(ROOT)}: duplicate case-insensitive path '#{relative}'"
    else
      normalized_paths[relative] = path
    end
  end
end

ROOT.glob("*.md").sort.each do |markdown_file|
  check_markdown_links(markdown_file, ROOT, ROOT, errors)
end

repository_paths = {}
ROOT.glob("**/*", File::FNM_DOTMATCH).reject do |path|
  path.directory? || path.to_s.include?(File::SEPARATOR + ".git" + File::SEPARATOR)
end.each do |path|
  relative = path.relative_path_from(ROOT).to_s.downcase
  if repository_paths.key?(relative)
    errors << "repository: duplicate case-insensitive path '#{relative}'"
  else
    repository_paths[relative] = path
  end
end

if errors.empty?
  puts "Validated #{skill_dirs.length} skill#{skill_dirs.length == 1 ? '' : 's'} successfully."
  exit 0
end

warn "Skill validation failed with #{errors.length} error#{errors.length == 1 ? '' : 's'}:"
errors.each { |error| warn "- #{error}" }
exit 1
