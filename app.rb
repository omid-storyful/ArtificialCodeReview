# frozen_string_literal: true

require 'dotenv/load'
require_relative './lib/prompt'
require_relative './lib/code_reviewer'

if ARGV[0] == 'explain' && !ARGV[1].nil?
  diff = `git diff origin/#{ARGV[1]}`
  puts CodeReviewer.send(ARGV[0], diff: diff)
else
  puts
  puts 'Please provide a valid command and any necessary arguments.'
  puts
  puts 'Existing commands:'
  puts
  puts 'ruby app.rb explain <COMPARISON>'
  puts
  puts 'Provides a description of the git diff in the current local git state with a comparison SHA or branch name'
  puts
end
