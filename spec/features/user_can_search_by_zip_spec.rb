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

  it "it shows all relevant info for each store" do
    expect(page).to have_content("Store Name")
    expect(page).to have_content("City")
    expect(page).to have_content("Distance")
    expect(page).to have_content("Phone")
    expect(page).to have_content("Store Type")
  end
end