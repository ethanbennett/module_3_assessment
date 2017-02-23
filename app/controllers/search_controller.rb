class SearchController < ApplicationController
  def index
    @zip = params[:q]
    @stores = BestBuyService.store_info["stores"]
  end
end