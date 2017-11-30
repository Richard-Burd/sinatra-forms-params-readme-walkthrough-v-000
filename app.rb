require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    "My name is #{params[:this_shit_transfers]}, and I love #{params[:fuck_shit]}"
  end

  # OK these are my custom code snippets
  get '/burd_page' do
    erb :burd_page
  end

  post '/burd_answers' do
    erb :burd_answers
    "Here is the hash of data: #{params.to_s}" #comment me out to see the "erb :burd_answers" instead
    "\n...and here is the first key: #{params[:first_param]}"
  end
end
