module StatsHelper
  def champion_data_json(champ_id)
    response = HTTParty.get('https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion/' + champ_id.to_s + '?api_key=' + ENV['LEAGUE_API'])
    JSON.parse(response.body)
  end

  def summoner_spell_data_json(spell_id)
    response = HTTParty.get('https://global.api.pvp.net/api/lol/static-data/na/v1.2/summoner-spell/' + spell_id.to_s + '?api_key=' + ENV['LEAGUE_API'])
    JSON.parse(response.body)
  end

  def summoner_spell_image(spell_id)
    spell_name = summoner_spell_data_json(spell_id)["key"]
    "http://ddragon.leagueoflegends.com/cdn/6.24.1/img/spell/#{spell_name}.png"
  end

  def item_image(item_id)
    "http://ddragon.leagueoflegends.com/cdn/6.24.1/img/item/#{item_id}.png"
  end
end
