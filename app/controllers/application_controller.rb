class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private

  # Summoner stats
  def base_uri(summoner_name)
    'https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/' + summoner_name + '?api_key=' + ENV['LEAGUE_API']
  end

  def summoner_stats_search(summoner_id)
    'https://na.api.pvp.net/api/lol/na/v1.3/stats/by-summoner/' + summoner_id + '/summary?season=SEASON2016&api_key=' + ENV['LEAGUE_API']
  end

  def summoners_recent_games(summoner_id)
    'https://na.api.pvp.net/api/lol/na/v1.3/game/by-summoner/' + summoner_id + '/recent?api_key=' + ENV['LEAGUE_API']
  end

  # Champions
  def champions_url
    "https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion?api_key=" + ENV['LEAGUE_API']
  end

  def champions_json
    @champions = JSON.parse(champions_url)
  end
end
