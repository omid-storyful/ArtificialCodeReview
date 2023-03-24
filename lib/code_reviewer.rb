# frozen_string_literal: true

require_relative './open_ai_adapter'
# Responsible for providing class methods that return desired code review
class CodeReviewer
  class << self
    def analyze(diff:, action:)
      handle_chat(diff: diff, system_prompt: Prompt.const_get("#{action}_CHANGES_SYSTEM_ROLE"),
                  user_prompt: Prompt.const_get("#{action}_CHANGES"))
    end

    private

    def handle_chat(diff:, system_prompt:, user_prompt:)
      messages = [
        { role: 'system', content: system_prompt },
        { role: 'user', content: user_prompt + diff }
      ]

      open_ai_conversation = OpenAiAdapter.new(input: messages)
      open_ai_conversation.request_chat
    end
  end
end
