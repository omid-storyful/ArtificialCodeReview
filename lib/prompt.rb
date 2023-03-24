# frozen_string_literal: true

class Prompt
  EXPLAIN_CHANGES = 'For given git diff, explain the changes with subheadings using markdown formatting in 200 ' \
                    'words or less. The first sentence of your response should provide the general purpose of the ' \
                    'changes. Changes: '
  EXPLAIN_CHANGES_SYSTEM_ROLE = 'You are the author of this code and you are explaining what ' \
                                'you have done to help others learn and understand.'
end
