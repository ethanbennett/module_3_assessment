require 'rails_helper'

RSpec.describe "Items API" do
  before do
    @items = create_list(:item, 3)
    get api_v1_items_path
  end

  it "shows all expected results in index" do
    expect(status).to eq(200)
  end

end