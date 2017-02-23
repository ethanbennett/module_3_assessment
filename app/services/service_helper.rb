module ServiceHelper
  def api_call(zip)
    Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=city,storeType,distance,longName,phone&pageSize=10&apiKey=#{ENV['KEY']}").body
  end

  def parse(api_response)
    JSON.parse(api_response)
  end

end