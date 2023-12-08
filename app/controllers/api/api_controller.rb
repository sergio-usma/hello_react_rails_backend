class Api::ApiController < ApplicationController
  def random_greeting
    random_message = Message.order('RANDOM()').first
    render json: { message: random_message&.message || 'No greetings available' }
  end
end
