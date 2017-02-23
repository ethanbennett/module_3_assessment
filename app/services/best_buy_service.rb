class BestBuyService
  def self.store_info(zip)
    response_body = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=city,storeType,distance,longName,phone&pageSize=10&apiKey=#{ENV['KEY']}").body
    raw_info = JSON.parse(response_body)
    raw_info
  end
end