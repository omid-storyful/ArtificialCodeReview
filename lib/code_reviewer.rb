require_relative './open_ai_adapter'
class CodeReviewer
  class << self
    def easy_fix(diff:, feedback: 'Add a `_` before all the methods')
      open_ai_conversation = OpenAiAdapter.new(input: diff, instruction: Prompt.easy_fix_diff(feedback))

      open_ai_conversation.request_edits
    end
  end
end