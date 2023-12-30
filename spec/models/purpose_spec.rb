require 'rails_helper'

RSpec.describe Purpose, type: :model do

  before{@purpose = Purpose.new}

  describe 'testes de preenchimento dos campos do model Purpose' do

    it 'decision consegue ser preenchido?' do
      @purpose.decision = ''
      expect(@purpose.decision).to eq('fazer 50 apis')
    end

  end

end