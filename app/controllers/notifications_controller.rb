require 'twilio-ruby'

class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def self.notify(total)
    client = Twilio::REST::Client.new ENV["SID"], ENV["PIN"]
    message = client.messages.create from: ENV["PHONE"], to: ENV["WOW"], body: 'Thanks for your order sucka, you"re total is ' "#{total}"
  end

end