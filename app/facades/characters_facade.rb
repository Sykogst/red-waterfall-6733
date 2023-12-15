class CharactersFacade
  def affiliation(keyword)
    service = CharactersService.new
    data = service.affiliation_search(keyword)
    nation_count = data.count
  
    # not best way to get character count...but it works
    data.map do |char_data|
      Character.new(char_data.merge(nation_count: nation_count))
    end
  end
end