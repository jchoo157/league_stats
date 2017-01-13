require 'httparty'

class StatsController < ApplicationController
  include HTTParty

  def index
    # doublelift
    doublelift_response = HTTParty.get(base_uri('doublelift'))
    @doublelift_body = JSON.parse(doublelift_response.body)
    # bjergson
    bjergsen_response = HTTParty.get(base_uri('bjergsen'))
    @bjergsen_body = JSON.parse(bjergsen_response.body)
    # hauntzer
    hauntzer_response = HTTParty.get(base_uri('hauntzer'))
    @hauntzer_body = JSON.parse(hauntzer_response.body)
    # wildturtle
    wildturtle_response = HTTParty.get(base_uri('wildturtle'))
    @wildturtle_body = JSON.parse(wildturtle_response.body)
    #biofrost
    biofrost_response = HTTParty.get(base_uri('biofrost'))
    @biofrost_body = JSON.parse(biofrost_response.body)
    #svenskeren
    svenskeren_response = HTTParty.get(base_uri('svenskeren'))
    @svenskeren_body = JSON.parse(svenskeren_response.body)
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
