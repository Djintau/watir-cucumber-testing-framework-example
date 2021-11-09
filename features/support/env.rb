require 'watir'
require 'webdrivers/chromedriver'
require 'webdrivers/geckodriver'
require 'page-object'
Dir["../helpers/*.rb"].each {|file| require file }

Before do
    # Specify webdriver installation path 
    Webdrivers.install_dir = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"webdrivers")

    # Start the browser as normal
    browser = (ENV['browser'] || 'chrome').to_sym
    @browser = Watir::Browser.new browser
    @browser.window.maximize
end

After do
    @browser.close
end

World(PageObject::PageFactory)