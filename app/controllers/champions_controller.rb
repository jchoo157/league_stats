class ChampionsController < ApplicationController
  def index
    response = HTTParty.get(champions_url)
    @champions = JSON.parse(response.body)["data"]
  end

  def show

  end
end
