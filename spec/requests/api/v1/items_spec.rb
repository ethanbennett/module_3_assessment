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

  it "can add a new item with post request" do
    post api_v1_items_path(name: "new", description: "new", image_url: "new")
    expect(status).to eq(201)
  end

  it "can update an existing item with put request" do
    put api_v1_item_path(@item, description: "new")
    expect(status).to eq(200)
  end

  it "can destroy an existing item with delete request" do
    delete api_v1_item_path(@item)
    expect(status).to eq(204)
  end
end