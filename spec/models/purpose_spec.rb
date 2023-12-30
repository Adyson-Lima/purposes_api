require 'rails_helper'

RSpec.describe Purpose, type: :model do

  before{@purpose = Purpose.new}

  describe 'testes de preenchimento dos campos do model Purpose' do

    it 'decision consegue ser preenchido?' do
      @purpose.decision = 'fazer 50 apis'
      expect(@purpose.decision).to eq('fazer 50 apis')
    end

    it 'why consegue ser preenchido?' do
      @purpose.why = 'melhorar habilidades'
      expect(@purpose.why).to eq('melhorar habilidades')
    end

  end

  describe 'testes de validação dos campos do model Purpose' do

    it 'objeto purpose valido com campos obrigatorios preenchidos?' do
      @purpose.decision = 'aprender react'
      @purpose.why = 'juntar com Rails'
      expect(@purpose).to be_valid
    end

    it 'objeto purpose invalido com campos obrigatorios não preenchidos?' do
      purpose = Purpose.new
      expect(purpose).to be_invalid
    end

  end  

end