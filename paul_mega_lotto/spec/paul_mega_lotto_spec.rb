require 'spec_helper'

describe PaulMegaLotto do
  it 'has a version number' do
    expect(PaulMegaLotto::VERSION).not_to be nil
  end

  describe '#configure' do
    before do
      PaulMegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end
    after do
      PaulMegaLotto.reset
    end

    it 'returns an array with 10 elements' do
      draw = PaulMegaLotto::Drawing.new.draw
      expect(draw).to be_an(Array)
      expect(draw.size).to eq(10)
    end
  end
end
