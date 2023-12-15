require 'rails_helper'

RSpec.describe CharactersFacade, type: :facade do
  describe 'Character Facade Instance Methods', :vcr do
    before(:each) do
      @facade = CharactersFacade.new  
    end

    it "exists" do
      expect(@facade).to be_a(CharactersFacade)
    end

    it "#affiliation(keyword)" do
      search_results = @facade.affiliation("Fire Nation")

      expect(search_results).to be_a(Array)
      search_results.each do |search_result|
        expect(search_result).to be_a(Character)
        expect(search_result).to respond_to(:id)
        expect(search_result).to respond_to(:name)
        expect(search_result).to respond_to(:allies)
        expect(search_result).to respond_to(:enemies)
        expect(search_result).to respond_to(:affiliations)
        expect(search_result).to respond_to(:search_nation_count)
      end
    end
  end
end