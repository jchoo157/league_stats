require 'httparty'

class StatsController < ApplicationController
  include HTTParty

  def index
    response = HTTParty.get(base_uri('choobie'))
    @body = JSON.parse(response.body)
    @id = @body["choobie"]["id"]
  end

  def show
    # Once the show page receives a valid summoner name it will start off getting their id
    @summoner_name = params[:summoner_name].downcase
    response = HTTParty.get(base_uri(@summoner_name))
    @body = JSON.parse(response.body)
    # Right here we get the id. Now we can use that id to get stats/games/etc
    id = @body[@summoner_name]["id"].to_s
    # getting summoner_stats_search from application controller
    stats_response = HTTParty.get(summoner_stats_search(id))
    @stats_body = JSON.parse(stats_response.body)
    games_response = HTTParty.get(summoners_recent_games(id))
    @games_body = JSON.parse(games_response.body)["games"]
  end

end
