require "paul_mega_lotto/version"
require "paul_mega_lotto/drawing"
require "paul_mega_lotto/helper"
require "paul_mega_lotto/configuration"
require "paul_mega_lotto/railtie" if defined?(Rails)
require "paul_mega_lotto/core_ext"

# Ignore requiring gems that are in development but not in production
begin
  require 'pry'
rescue LoadError
end

module PaulMegaLotto
  attr_writer :configuration

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end

  def self.reset
    @configuration = Configuration.new
  end
end
