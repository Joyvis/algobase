#!/usr/bin/env ruby

require 'fileutils'
require 'shellwords'

# Utilities
def prompt(label)
  print(label)
  STDOUT.flush
  STDIN.gets&.strip
end

def slugify(text)
  return '' if text.nil?
  text.downcase
      .gsub(/[^a-z0-9\s-]/, '-')
      .gsub(/[\s_]+/, '-')
      .gsub(/-+/, '-')
      .gsub(/^-|-$/, '')
end

def select_language
  puts "Select language:";
  puts "  1) Ruby";
  puts "  2) Python";
  puts "  3) TypeScript";
  loop do
    choice = prompt("Enter 1/2/3 or name (ruby/python/typescript): ")&.downcase
    case choice
    when '1', 'ruby' then return ['ruby', 'rb']
    when '2', 'python' then return ['python', 'py']
    when '3', 'typescript', 'ts' then return ['typescript', 'ts']
    else
      puts "Invalid choice. Try again."
    end
  end
end

def abort_with(message)
  warn("Error: #{message}")
  exit(1)
end

# Inputs
# problem_id = prompt("LeetCode problem ID (e.g., 53): ")
# abort_with('problem ID is required') if problem_id.nil? || problem_id.empty?

problem_title = prompt("LeetCode problem title (e.g., 53. Maximum Subarray): ")
abort_with('problem title is required') if problem_title.nil? || problem_title.empty?
problem_id, problem_title = problem_title.split('.')
lang_name, ext = select_language

slug = slugify(problem_title)
folder_name = problem_id.to_s.strip.empty? ? slug : "#{problem_id.strip}-#{slug}"
abort_with('Could not derive folder name') if folder_name.empty?

target_dir = File.join('src', folder_name)
FileUtils.mkdir_p(target_dir)

target_file = File.join(target_dir, "solution.#{ext}")

if File.exist?(target_file)
  overwrite = prompt("#{target_file} exists. Overwrite? (y/N): ")
  abort_with('aborted by user') unless overwrite&.downcase == 'y'
end

puts
puts "Paste the solution content below. Press Ctrl-D (Unix/macOS) to finish:"
puts

content = STDIN.read
abort_with('no content provided') if content.nil? || content.strip.empty?

File.write(target_file, content)

puts "\nCreated: #{target_file}"

# Git operations
def run!(cmd)
  puts cmd
  success = system(cmd)
  abort_with("command failed: #{cmd}") unless success
end

run!("git add #{Shellwords.escape(target_file)}")
commit_msg = "Add #{folder_name} (#{lang_name})"
run!("git commit -m #{Shellwords.escape(commit_msg)}")
run!("git push")

puts "\nDone."


