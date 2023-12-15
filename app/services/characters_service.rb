class CharactersService < ApplicationService
  def conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def get_json(endpoint)
    conn.get(endpoint)
  end

  def affiliation_search(keyword)
    json_parse(get_json("/api/v1/characters?perPage=497&affiliation=#{keyword}"))
  end
end