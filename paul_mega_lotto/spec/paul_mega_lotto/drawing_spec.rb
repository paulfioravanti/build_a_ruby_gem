require 'spec_helper'

module PaulMegaLotto
  RSpec.describe Drawing do
    describe '#draw' do
      let(:drawing) { Drawing.new.draw }

      it 'returns an array' do
        expect(drawing).to be_an(Array)
      end

      it 'has 6 elements' do
        expect(drawing.size).to eq(6)
      end

      it 'contains only integers' do
        expect(drawing).to all(be_an(Integer))
      end

      it 'only contains values < 60' do
        expect(drawing).to all(be < 60)
      end
    end
  end
end
