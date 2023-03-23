# frozen_string_literal: true

class Prompt
  class << self
    def easy_fix_diff(feedback)
      "For given git diff, implement the points of feedback that fit within the context of the diff. Here is the feedback: #{feedback}. Please return the updated diff."
    end
  end
end
