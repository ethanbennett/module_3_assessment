class SearchController < ApplicationController
  def index
    @zip = params[:q]
    @stores = api_response["stores"]
  end

private

  def api_response
    BestBuyService.store_info(@zip)
  end
end