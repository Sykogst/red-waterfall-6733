class Character
  attr_reader :id, 
              :name, 
              :allies, 
              :enemies, 
              :affiliations,
              :search_nation_count

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:allies] #
    @enemies = data[:enemies] #
    @affiliations = data[:affiliation] #
    @search_nation_count = data[:nation_count] # Should not go here, but to make it easy for now
  end
end