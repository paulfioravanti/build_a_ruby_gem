module PaulMegaLotto
  class Drawing
    def draw
      PaulMegaLotto.configuration.drawing_count.times.map { single_draw }
    end

    private

    def single_draw
      rand(0...60)
    end
  end
end
