require 'spec_helper'
require 'paul_mega_lotto/helper'

class FakeView
  include PaulMegaLotto::Helper
end

describe FakeView do
  describe '#mega_lotto_drawing' do
    it 'delegates to PaulMegaLotto::Drawing#draw' do
      drawing = double('drawing')
      allow(PaulMegaLotto::Drawing).to receive(:new).and_return(drawing)
      expect(drawing).to receive(:draw)
      FakeView.new.mega_lotto_drawing
    end
  end
end
