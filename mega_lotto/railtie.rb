module PaulMegaLotto
  class Railtie < Rails::Railtie
    initializer 'my_railtie.configure_rails_initialization' do
      # PaulMegaLotto::HolidayDrawing.send(:include, PaulMegaLotto::Jackpot)
      ActiveSupport.on_load(:action_view) do
        include PaulMegaLotto::Jackpot
      end
    end

  end
end
