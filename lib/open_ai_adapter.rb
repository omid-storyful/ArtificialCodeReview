require 'ruby/openai'

class OpenAiAdapter
  Parameters = Struct.new(:model, :input, :instruction)

  EDIT_MODEL = 'text-davinci-edit-001'

  def initialize(input:, instruction:)
    @parameters = Parameters.new(input: input, instruction: instruction)
    @client = OpenAI::Client.new(access_token: ENV['OPENAI_ACCESS_TOKEN'])
    puts @client
  end

  def request_edits
    @parameters.model = EDIT_MODEL

    @client.edits(parameters: @parameters)
  end
end
