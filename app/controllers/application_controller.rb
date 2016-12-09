class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private

  def base_uri
    'https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/'
  end

  def api_key
    '?api_key=45ff6a4c-f994-420d-a018-189db4cb494e'
  end

  def summoner_search_start
    'https://na.api.pvp.net/api/lol/na/v1.3/stats/by-summoner/'
  end

  def summoner_search_tail
    '/summary?season=SEASON2016'
  end
end
