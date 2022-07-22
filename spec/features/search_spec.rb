require 'rails_helper'

RSpec.describe 'Search Result Page', type: :feature do
  before(:each) do
    visit '/'
    select 'Fire Nation', from: :nation
    click_button('Search For Members')
  end
  it 'shows total number of fire benders' do
    expect(page).to have_content('Total Fire Nation Member Count: 100~')
  end
end
