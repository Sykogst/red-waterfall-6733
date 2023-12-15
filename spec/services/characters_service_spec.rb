require 'rails_helper'

RSpec.describe CharactersService, type: :service do
  describe 'Characters Service Instance Methods', :vcr do
    it '#conn, returns a faraday object' do
      service = CharactersService.new

      expect(service.conn).to be_a(Faraday::Connection)
    end

    it '#get_json(endpoint), returns hash data' do
      endpoint = '/api/v1/characters?affiliation=Fire Nation'
      top_rated = CharactersService.new.get_json(endpoint)

      expect(top_rated).to be_a(Faraday::Response)
    end

    it '#affiliation_search(keyword), returns hash data' do
      keyword = 'Fire Nation'
      search_results = CharactersService.new.affiliation_search(keyword)

      expect(search_results).to be_a(Array)
    end
  end
end