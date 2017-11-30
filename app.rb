require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end

  # OK these are my custom code snippets
  get '/burd_page' do
    erb :burd_page
  end

  post '/burd_answers' do
    erb :burd_answers

    # comment this stuff out below to see the alternative answer above: "erb :burd_answers"
     "Here is the hash of data: #{params.to_s}
     \n...and here is the first key: #{params[:first_param]}
     \n...and here is the other key: #{params[:second_param]}"
  end
end
