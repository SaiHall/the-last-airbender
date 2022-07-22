require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
  it 'will route to search page from search box' do
    visit '/'

    select 'Fire Nation', from: :nation
    click_button('Search For Members')

    expect(page).to have_current_path('/search')
  end
end
