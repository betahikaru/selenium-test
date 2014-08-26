# -*- coding: utf-8 -*-
require 'rubygems'
require 'selenium-webdriver'
require 'dotenv'
Dotenv.load

def search_google_demo
  driver = Selenium::WebDriver.for :firefox
  driver.get "http://www.google.co.jp/"
  driver.find_element(:class,"gsfi").send_key "Selenium"
  driver.find_element(:name,"btnK").submit
  driver.close
end

search_google_demo
