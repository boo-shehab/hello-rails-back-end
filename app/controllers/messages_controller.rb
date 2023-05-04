class MessagesController < ApplicationController
    def random_greeting
      @message = Messages.order("RANDOM()").first
      render json: { message: @message }
    end
  end
  