class GreetingsController < ApplicationController
  def random_greeting
    random_message = Messages.order('RANDOM()').first
    render json: { greeting: random_message.message }
  end
end
