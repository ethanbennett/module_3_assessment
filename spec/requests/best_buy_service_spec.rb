require 'rails_helper'

RSpec.describe "Best Buy Service" do
  before do
    raw_info = BestBuyService.store_info("80202")
    # binding.pry
    @stores = raw_info["stores"]
  end

  it "returns the expected number of responses" do
    expect(@stores.count).to eq(10)
  end
end