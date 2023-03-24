# frozen_string_literal: true

require 'openai'

# Responsible for interfacing with OpenAi
class OpenAiAdapter
  GPT_MODEL = 'gpt-3.5-turbo'
  STANDARD_TEMPERATURE = 0.1

  def initialize(input:)
    @input = input
    @client = OpenAI::Client.new(access_token: ENV.fetch('OPENAI_ACCESS_TOKEN', nil))
  end

  def request_chat
    @client.chat(parameters: chat_input)
  end

  private

  def chat_input
    {
      model: GPT_MODEL,
      messages: @input,
      temperature: STANDARD_TEMPERATURE
    }
  end
end
