require 'rubygems'
require 'spec'
require "watir-webdriver"

browser= Watir::Browser.start(SITE, :chrome)
Before do
  @browser = browser
end
