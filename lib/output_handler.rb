# frozen_string_literal: true

# Responsible for error handling
class OutputHandler
  class << self
    def unknown_command_error
      puts 'Please provide a valid command and any necessary arguments.'
      command_list
      exit 1
    end

    def missing_command_error
      puts 'You did not provide a command to the script.'
      command_list
      exit 1
    end

    def missing_option_error
      puts 'You did not provide a required option to the script.'
      command_list
      exit 1
    end

    def signature
      puts 'https://github.com/omid-storyful/ArtificialCodeReview'
    end

    def command_list
      puts 'Existing commands:'
      puts
      puts 'ruby app.rb explain <COMPARISON>'
      puts 'Provides a description of the git diff in the current local git state with a comparison SHA or branch name'
      puts
      puts 'ruby app.rb review <COMPARISON>'
      puts 'Provides a review of the git diff in the current local git state with a comparison SHA or branch name'
    end

    def display_feedback(feedback)
      puts
      puts feedback['choices'][0]['message']['content']
      puts
    end
  end
end
