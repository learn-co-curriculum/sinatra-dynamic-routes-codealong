require 'spec_helper'
describe 'APP' do 

  describe 'GET /goodbye/:name' do
    it 'sends a 200 status code' do
      get '/goodbye/danny'
      expect(last_response.status).to eq(200)
    end

    it 'displays goodbye and a name' do 
      get '/goodbye/danny'
      expect(last_response.body).to include("Goodbye danny")
    end
  end

    describe 'GET /multiply/:num1/:num2' do
    it 'sends a 200 status code' do
      get '/multiply/5/5'
      expect(last_response.status).to eq(200)
    end

    it 'displays product of route params' do 
      get '/multiply/5/5'
      expect(last_response.body).to include("25")
    end
  end


end
