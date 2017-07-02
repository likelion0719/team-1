require 'nokogiri'
require 'open-uri'
require 'cgi'
#require "json"

class MovieController < ApplicationController
  def index
    url= "http://www.cine21.com/movie/lists/playing"
    @data = Nokogiri::HTML(open(url))
    @notices = @data.xpath('//span[@class="tit"]')
    
    @info = @data.xpath('//li[@class="move_info_list"]/a')
     
    
    
    
    
  end

  def result
    
    @searchmovie = CGI::escape(params[:input_search])
    searchurl= "http://www.cine21.com/search/movie/?q=#{@searchmovie}"
    @searchdata = Nokogiri::HTML(open(searchurl))
    @searchresult = @searchdata.xpath('//p[@class="name"] /a')
  end
end
