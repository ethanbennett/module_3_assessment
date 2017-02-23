require 'rails_helper'

RSpec.describe "Best Buy Service" do
  before do
    get "https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=city,storeType,distance,longName,phone&pageSize=10&apiKey=#{ENV['KEY']}"