require 'spec_helper'

module PaulMegaLotto
  describe Configuration do
    describe '#drawing_count' do
      it 'has a default value of 6' do
        config = Configuration.new
        expect(config.drawing_count).to eq(6)
      end
    end

    describe '#drawing_count=' do
      it 'sets the drawing_count to a custom value' do
        config = Configuration.new
        config.drawing_count = 7
        expect(config.drawing_count).to eq(7)
      end
    end
  end
end
