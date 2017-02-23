class BestBuyService
  extend ServiceHelper

  def self.store_info(zip)
    parse api_call(zip)
  end
end