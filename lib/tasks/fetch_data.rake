require 'uri'
require 'net/http'
require 'json'

task :fetch_data do
    lists = List.all
    if lists.length() > 0
      uri = "https://api.trello.com/1/boards/6305f6a02fae675940920902/lists"
      params = { :key => '36c99831f2f6a19f2f4fac7201302680', :token => 'a11734ce1c0d88d50a2d3c0b1151062fe1d8736d97f615b7ef7dbe699a772631' }
      uri.query = URI.encode_www_form(params)
      response = Net::.get_response(uri)
      data_hash = JSON.parse(response)
      
    end
  end