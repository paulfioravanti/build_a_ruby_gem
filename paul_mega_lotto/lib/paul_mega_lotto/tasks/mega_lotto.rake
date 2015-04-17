namespace :mega_lotto do
  desc "Generate a random lottery drawing"
  task :draw do
    puts PaulMegaLotto::Drawing.new.draw
  end
end
