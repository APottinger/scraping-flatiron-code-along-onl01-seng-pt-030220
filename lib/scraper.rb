require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper
  
  html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
  doc = Nokogiri::HTML(html)
  
  binding.pry 
  
  def get_page
    Nokogiri::HTML(html)
  end 
  
  def get_courses
    doc.css(".posts-holder")
  end 
  
  def make_courses
    self = Course.new(title, schedule, description)
  end 
end 

Scraper.new.get_page
  
  
  
  
  
  
  
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end 
end



