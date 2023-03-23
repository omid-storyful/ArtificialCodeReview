# frozen_string_literal: true

require 'dotenv/load'
require_relative './lib/prompt'
require_relative './lib/code_reviewer'

diff = `git diff origin/master`

puts CodeReviewer.easy_fix(diff: diff)