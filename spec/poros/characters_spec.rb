require 'rails_helper'

RSpec.describe Character do
  it 'exists and has readable attributes' do
    data = {
        "_id": "5cf5679a915ecad153ab68fd",
        "allies": [
            "Ozai"
        ],
        "enemies": [
            "Earth Kingdom"
        ],
        "name": "Chan (Fire Nation admiral)",
        "affiliation": "Fire Nation Navy"
    }

    chan = Character.new(data)
    expect(chan).to be_an_instance_of(Character)
    expect(chan.name).to eq("Chan (Fire Nation admiral)")
    expect(chan.allies).to eq(["Ozai"])
    expect(chan.enemies).to eq(["Earth Kingdom"])
    expect(chan.affiliations).to eq("Fire Nation Navy")
  end
end
