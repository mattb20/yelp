require 'rails_helper'
RSpec.feature "Landing page", type: :feature do
  scenario "User can see they are on yelp" do
    visit("/")
    expect(page.text).to match(/YELP/);
  end
  scenario "User can see a restaurant" do
    visit("/")
    expect(page).to match(/Resturant/);
  end
end
