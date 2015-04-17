require 'rails'

module PaulMegaLotto
  class Railtie < Rails::Railtie
    initializer 'mega_lotto.action_view' do
      ActiveSupport.on_load(:action_view) do
        include PaulMegaLotto::Helper
      end
    end

    rake_tasks do
      load 'paul_mega_lotto/tasks/mega_lotto.rake'
    end
  end
end
