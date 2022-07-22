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
    expect(chan.photo).to eq(nil)
  end
  it 'will return a photo url if one exists' do
    data = {
        "_id": "5cf5679a915ecad153ab6906",
        "allies": [
            "Ty Lee"
        ],
        "enemies": [
            "Appa"
        ],
        "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
        "name": "Circus master",
        "affiliation": "Fire Nation circus"
    }

    ty = Character.new(data)
    expect(ty.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end

  # it 'will show none if a character has no enemies or allies' do
  #   data = {
  #       "_id": "5cf5679a915ecad153ab691d",
  #       "allies": [],
  #       "enemies": [],
  #       "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/1/16/Ember_Island_Players.png/revision/latest?cb=20130722113209",
  #       "name": "Ember Island Players",
  #       "affiliation": "Fire Nation"
  #   }
  #
  #   ember = Character.new(data)
  #   expect(ember.enemies).to eq("None")
  #   expect(ember.allies).to eq("None")
  # end
end
