# frozen_string_literal: true

require_relative './open_ai_adapter'

# Responsible for providing class methods that return desired code review
class CodeReviewer
  class << self
    def explain(diff:)
      messages = [
        { role: 'system', content: Prompt::EXPLAIN_CHANGES_SYSTEM_ROLE },
        { role: 'user', content: Prompt::EXPLAIN_CHANGES + diff }
      ]

      open_ai_conversation = OpenAiAdapter.new(input: messages)
      open_ai_conversation.request_chat
    end
  end
end
