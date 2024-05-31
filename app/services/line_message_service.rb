require 'line/bot'

class LineMessageService
  attr_reader :message, :client

  def initialize(message)
    @message = message
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end

  def call
    message_block = {
      type: 'text',
      text: message
    }
    # @client.push_message('Ua47c20764ce6342f8d20e93fd650c577', message_block)
    @client.push_message('U97a0874c1af2397e0591455c98d64f2c', message_block)
  end
end

# To use this
# LineMessageService.new('Hey you have trash coming').call
