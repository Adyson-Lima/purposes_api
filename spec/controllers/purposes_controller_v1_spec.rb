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

  describe 'GET /api/v1/purposes/id' do
    it 'Consegue listar um purpose especifico e retornar status 200?' do
      get :show, params: {id: @purpose.id}
      expect(response.body).to include_json(id: @purpose.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/purposes' do
    it 'Consegue criar um purpose e retornar status 201?' do
      post :create, params: {purpose: {decision: 'estudar angular', why: 'melhorar habilidades'}, format: :json}
      expect(response.body).to include_json(decision: 'estudar angular')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/purposes/id' do
    it 'Consegue atualizar um purpose e retornar status 200?' do
      purpose = Purpose.last
      patch :update, params: {purpose: {decision: 'ler rails 7', why: 'aprender mais'}, id: @purpose.id}
      expect(response.body).to include_json(decision: 'ler rails 7')
      expect(response).to have_http_status(200)
    end
  end

end