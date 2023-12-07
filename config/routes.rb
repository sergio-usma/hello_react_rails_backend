Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get 'greetings/random', to: 'api#random_greeting'
  end
end
