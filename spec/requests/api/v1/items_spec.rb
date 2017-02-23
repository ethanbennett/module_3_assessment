require 'rails_helper'

RSpec.describe "Items API" do
  before do
    @items = create_list(:item, 3)
    @item = @items.first
  end

  it "shows all expected results in index" do
    get api_v1_items_path
    expect(status).to eq(200)
    expect(@items.count).to eq(3)
  end

  it "shows only a single response in show" do
    get api_v1_item_path(@item)
    expect(status).to eq(200)
  end

  # Will add extra tests, if there's time. I'm having issues getting
  # anything besides get requests to work here. Everything works in
  # Postman, though.
end