require 'httparty'

class StatsController < ApplicationController
  include HTTParty

  def index
    response = HTTParty.get(base_uri('choobie') + ENV['LEAGUE_API'])
    @body = JSON.parse(response.body)
    @id = @body["choobie"]["id"]
  end

  def show
    summoner_name = params[:summoner_name]
    response = HTTParty.get(base_uri(summoner_name) + ENV['LEAGUE_API'])
    @body = JSON.parse(response.body)
    id = @body[summoner_name]["id"].to_s
    stats_url = summoner_stats_search(id) + ENV['LEAGUE_API']
    stats_response = HTTParty.get(stats_url)
    @stats_body = JSON.parse(stats_response.body)
  end

end
