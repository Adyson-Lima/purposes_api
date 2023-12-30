require 'rails_helper'

RSpec.describe Purpose, type: :model do

  before{@purpose = Purpose.new}

  describe 'testes de preenchimento dos campos do model Purpose' do

    it 'decision consegue ser preenchido?' do
      @purpose.decision = 'fazer 50 apis'
      expect(@purpose.decision).to eq('fazer 50 apis')
    end

    it 'why consegue ser preenchido?' do
      @purpose.why = ''
      expect(@purpose.why).to eq('melhorar habilidades')
    end

  end

  

end