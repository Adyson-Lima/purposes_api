require 'rails_helper'

RSpec.describe Api::V1::PurposesController, type: :controller do

  before{@purpose = Purpose.create(decision: 'aprender puts_dev framework', why: 'desenvolver documentação')}

  describe 'GET /api/v1/purposes' do
    it 'Consegue listar todos os purposes e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end