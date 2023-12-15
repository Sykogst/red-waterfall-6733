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
    @allies = allies_info(data)
    @enemies = enemies_info(data)
    @affiliations = data[:affiliation]
    @search_nation_count = data[:nation_count] # Should not go here, but to make it easy for now
  end

  private
    
    def allies_info(data)
      allies_data = data[:allies]
      if allies_data.nil? || allies_data.empty?
        "None"
      else
        allies_data
      end
    end

    def enemies_info(data)
      enemies_data = data[:enemies]
      if enemies_data.nil? || enemies_data.empty?
        "None"
      else
        enemies_data
      end
    end
end