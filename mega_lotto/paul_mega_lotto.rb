require_relative './holiday_drawing'

module PaulMegaLotto
  class HolidayDrawing
    include Jackpot

    def draw
      "This is a holiday drawing"
    end
  end
end
