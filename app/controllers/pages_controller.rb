class PagesController < ApplicationController
  def home
    @client = Twilio::REST::Client.new
    @client.messages.create(
      from: '+33644607406',
      to: '+33688432021',
      body: "Coucou, #{var}"
    )
  end
end
