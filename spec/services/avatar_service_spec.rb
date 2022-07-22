require 'rails_helper'

RSpec.describe AvatarService do
  describe 'Affiliation Endpoint' do
    it 'can retrieve data from nation affiliation endpoint' do
      json = AvatarService.get_affilitaion("Fire+Nation")

      expect(json).to be_a(Array)
      expect(json.count).to be(97)
      expect(json[0]).to have_key(:name)
    end
  end
end
