module PaulMegaLotto
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc <<desc
description:
    copy mega lotto configuration to an initializer
desc

    def create_configuration
      # create_file 'config/initializers/paul_mega_lotto.rb' do <<CONFIG
# PaulMegaLotto.configure do |config|
  # config.drawing_count = 6
# end
# CONFIG
      # end
      template 'paul_mega_lotto.rb', 'config/initializers/paul_mega_lotto.rb'
    end
  end
end
