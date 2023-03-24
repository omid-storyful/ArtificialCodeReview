# frozen_string_literal: true

require 'dotenv/load'
require_relative './lib/prompt'
require_relative './lib/code_reviewer'
require_relative './lib/output_handler'

OutputHandler.missing_command_error unless ARGV[0]

case ARGV[0]
when 'explain', 'review'
  OutputHandler.missing_option_error unless ARGV[1]
  diff = `git diff origin/#{ARGV[1]}`
  feedback = CodeReviewer.send('analyze', diff: diff, action: ARGV[0].upcase)
  OutputHandler.display_feedback(feedback)
when 'help'
  OutputHandler.command_list
else
  OutputHandler.unknown_command_error
end
OutputHandler.signature
