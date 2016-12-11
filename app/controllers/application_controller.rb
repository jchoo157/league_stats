class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private

  def base_uri(summoner_name)
    'https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/' + summoner_name + '?api_key='
  end

  def summoner_stats_search(id)
    'https://na.api.pvp.net/api/lol/na/v1.3/stats/by-summoner/' + id + '/summary?season=SEASON2016&api_key='
  end


end
