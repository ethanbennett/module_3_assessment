require 'rails_helper'

RSpec.describe "Best Buy Service" do
  before do
    raw_info = BestBuyService.store_info("80202")
    @stores = raw_info["stores"]
    @store = @stores.first
  end

  it "returns the expected number of results" do
    expect(@stores.count).to eq(10)
  end

  it "returns all desired paramaters for each result" do
    expect(@store).to have_key("longName")
    expect(@store).to have_key("distance")
    expect(@store).to have_key("phone")
    expect(@store).to have_key("city")
    expect(@store).to have_key("storeType")
  end
end