require 'rails_helper'

RSpec.describe AvatarFacade do
  it 'creates a character poro from affiliation call' do
    characters = AvatarFacade.create_affiliation_characters("Fire+Nation")

    expect(characters[0]).to be_an_instance_of(Character)
    expect(characters.length).to eq(25)
  end

  it 'returns the number of search results' do
    number = AvatarFacade.create_search_number("Fire+Nation")

    expect(number).to eq(97)
  end
end
