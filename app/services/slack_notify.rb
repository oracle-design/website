class SlackNotify
  require 'slack-notifier'
  SLACK_WEBHOOK_URL = 'https://hooks.slack.com/services/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'

  def initialize(args)
    @channel = args[:channel] || '#test'
    @username = args[:username] || 'BOT'
    @message = args[:message] || 'test'
    @notifier = Slack::Notifier.new SLACK_WEBHOOK_URL, channel: @channel, username: @username
    @notifier.ping @message
  end
end
