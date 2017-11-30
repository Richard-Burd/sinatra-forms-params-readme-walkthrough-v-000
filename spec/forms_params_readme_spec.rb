require 'spec_helper'

describe "App" do
  describe 'POST /food' do
    it 'responds with a 200' do
      post '/food'

      expect(last_response.status).to eq(200)
    end

    it 'displays the params' do
      params = {
        :name => "Carl",
        :favorite_food => "fried chicken"
      }

      post '/food', params

      expect(last_response.body).to eq("My name is #{params[:name]}, and I love #{params[:favorite_food]}")
    end
  end

  describe 'POST /burd_answers' do
    it 'responds with a 200' do
      post '/burd_answers'

      expect(last_response.status).to eq(200)
    end

    it 'displays the params' do
      params = {
        :first_param => "Heroditus",
        :second_param => "Triclenaum"
      }

      post '/burd_answers', params

    
    end
  end
end
