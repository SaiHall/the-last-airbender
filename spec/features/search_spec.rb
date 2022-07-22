require 'rails_helper'

RSpec.describe 'Search Result Page', type: :feature do
  before(:each) do
    visit '/'
    select 'Fire Nation', from: :nation
    click_button('Search For Members')
  end
  it 'shows total number of fire benders' do
    expect(page).to have_content('Total Fire Nation Member Count: 97')
  end

  it 'lists twenty five characters affiliated with search choice' do
    expect(page.all('.character').length).to eq(25)
  end

  it 'lists character details' do
    within page.all('.character')[0] do
      expect(page).to have_content("Ozai")
      expect(page).to have_content("Earth Kingdom")
      expect(page).to have_content("Chan")
      expect(page).to have_content("Fire Nation Navy")
    end
  end

  it 'will show none if character has no enemies or allies' do
    save_and_open_page
    within page.all('.character')[22] do
      expect(page).to have_content("Ember Island Players")
      expect(page).to have_content("None")
    end
  end
end
