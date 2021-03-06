require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'


AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}homolog.yml")

World(Helper)
World(PageObjects)



Capybara.configure do |config|

#:selenium ou :selenium_chrome ou :selenium_chrome_headless
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10

end
