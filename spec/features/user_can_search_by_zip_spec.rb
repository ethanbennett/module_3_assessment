require 'rails_helper'

RSpec.describe "When a user searches by zip code" do
  before do
    visit "/"
    fill_in :q, with: "80202"
    click_on "Search"
  end
  
  it "the search function works properly" do
    expect(current_path).to eq("/search")
    expect(page).to have_content("80202")
    expect(page).to have_content("16 Total Stores")
  end



end

# As a user
# When I visit "/"
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "16 Total Stores"
# And I should see exactly 10 results
# And I should see the long name, city, distance, phone number and store type for each of the 10 results