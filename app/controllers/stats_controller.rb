require 'httparty'

class StatsController < ApplicationController
  include HTTParty

  def index
    response = HTTParty.get(base_uri + 'choobie' + api_key)
    @body = JSON.parse(response.body)
    @id = @body["choobie"]["id"]
  end

  def show
    summoner_name = params[:summoner_name]
    response = HTTParty.get(base_uri + "#{summoner_name}" + api_key)
    @body = JSON.parse(response.body)
    id = @body["#{summoner_name}"]["id"]
    

  end

end
