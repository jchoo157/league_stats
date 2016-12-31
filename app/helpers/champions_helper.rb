module ChampionsHelper

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

  def get_champion_name(champ_id)
    champion_data_json(champ_id)["key"]
  end

  # used on the champions index page
  def champion_icon_art(champ_id)
    "http://ddragon.leagueoflegends.com/cdn/6.24.1/img/champion/#{get_champion_name(champ_id)}.png"
  end

  # used on the champions show page
  def champion_loading_screen_art(champ_id)
    "http://ddragon.leagueoflegends.com/cdn/img/champion/loading/#{get_champion_name(champ_id)}_0.jpg"
  end

  def champion_spells
    response = HTTParty.get('https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion?champData=spells&api_key=' + ENV['LEAGUE_API'])
    JSON.parse(response.body)["data"]
  end

  def specific_champion_data(champ_id)
    champion_spells[get_champion_name(champ_id)]
  end

  def champion_spell_image(spell_name)
    'http://ddragon.leagueoflegends.com/cdn/6.24.1/img/spell/' + spell_name
  end
end
