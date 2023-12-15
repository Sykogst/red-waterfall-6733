require "rails_helper"

RSpec.describe Character do
  it "exists" do
    data = {
      _id: "5cf5679a915ecad153ab68da",
      allies: [
          "Ozai",
          "Zuko "
      ],
      enemies: [
          "Iroh",
          "Zuko",
          "Kuei",
          "Long Feng",
          "Mai",
          "Ty Lee",
          "Ursa "
      ],
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      name: "Azula",
      affiliation: " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)",
      nation_count: 97
  }
  
    character = Character.new(data)

    expect(character).to be_a(Character)
    expect(character.id).to eq("5cf5679a915ecad153ab68da")
    expect(character.name).to eq("Azula")
    expect(character.allies).to eq(["Ozai", "Zuko "].to_sentence)
    expect(character.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "].to_sentence)
    expect(character.affiliations).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    expect(character.search_nation_count).to eq(97) # check this later
  end

  it "returns 'None' for allies and enemies if none exist" do
    data = {
      _id: "5cf5679a915ecad153ab68da",
      allies: [],
      enemies: [],
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      name: "Azula",
      affiliation: " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)",
      nation_count: 97
  }
  
    character = Character.new(data)

    expect(character).to be_a(Character)
    expect(character.id).to eq("5cf5679a915ecad153ab68da")
    expect(character.name).to eq("Azula")
    expect(character.allies).to eq("None")
    expect(character.enemies).to eq("None")
    expect(character.affiliations).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    expect(character.search_nation_count).to eq(97) # check this later
  end
end