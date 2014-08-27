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

def display_betahikarucom_demo
  driver = Selenium::WebDriver.for :firefox
  driver.get "http://betahikaru.com"
  begin
    driver.find_element(:partial_link_text, "動物は").click
    sleep 3

    driver.find_element(:id, "id_sentence1").send_key "title"
    driver.find_element(:id, "id_sentence2").send_key "subtitle"

  rescue => e
    puts e.to_s
  ensure
    driver.close
  end
end

search_google_demo
display_betahikarucom_demo
