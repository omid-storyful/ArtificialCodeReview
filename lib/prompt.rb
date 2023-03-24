# frozen_string_literal: true

class Prompt
  EXPLAIN_CHANGES = 'For the given git diff, explain the git diff with subheadings with markdown formatting in 200 ' \
                    'words or less. The first sentence of your response should provide the general purpose of the ' \
                    'changes found in the git diff. The git diff: '
  EXPLAIN_CHANGES_SYSTEM_ROLE = 'You are the author of the changes in the git diff and you are explaining what ' \
                                'you have done to help others learn and understand.'

  REVIEW_CHANGES = 'Review the code changes in this git diff and provide 3 improvements. Focus on maintainability ' \
                   'and readability. Use a numbered list for your feedback and format your response with markdown. ' \
                   'Use emojis in every sentence. Keep your comments under 250 words. The first ' \
                   'sentence of your response should thank the author and the last sentence of your response should ' \
                   'be encouraging them to keep up the good work. The git diff: '
  REVIEW_CHANGES_SYSTEM_ROLE = 'You are the reviewer of this code and you are explaining how the person can improve. ' \
                               'Your goal is to help others learn.'
end
