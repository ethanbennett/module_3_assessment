require 'rails_helper'

RSpec.describe "Items Serializer" do
  before do
    items = create_list(:item, 3)
    @item = items.first
    visit api_v1_item_path(@item)
  end

  it "only shows required attributes" do
    expect(page).to have_content(@item.name)
    expect(page).to have_content(@item.description)
    expect(page).to have_content(@item.image_url)
    expect(page).to_not have_content(@item.created_at)
    expect(page).to_not have_content(@item.updated_at)
  end
end