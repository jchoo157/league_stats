require 'httparty'

class StatsController < ApplicationController
  include HTTParty
  BASE_URI = 'https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/'

  def index
    @summoner_name = params[:summoner_name]
    @response = HTTParty.get(BASE_URI + 'choobie' + api_key)
  end

  def show
    @summoner_name = params[:summoner_name]
    @response = HTTParty.get(BASE_URI + "#{@summoner_name}" + api_key)
  end

  private

  def api_key
    '?api_key=45ff6a4c-f994-420d-a018-189db4cb494e'
  end
end
