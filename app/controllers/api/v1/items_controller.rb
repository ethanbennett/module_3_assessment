class Api::V1::ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  def index
    @items = Item.all
    render json: @items, :serializer => ItemSerializer
  end

  def show
    render json: @item, :serializer => ItemSerializer
  end

  def create
  end

  def update
  end

  def destroy
  end

private
  
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :image_url)
  end
end