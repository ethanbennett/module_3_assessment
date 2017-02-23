class Api::V1::ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]
  skip_before_filter :verify_authenticity_token 

  def index
    @items = Item.all
    render json: @items
  end

  def show
    render json: @item
  end

  def create
    @item = Item.new(name: params["name"], description: params[:description], image_url: params["image_url"])
    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

private
  
  def set_item
    @item = Item.find(params[:id])
  end

  # For some reason, the strong params are throwing errors. Definitely
  # needs to be refactored, depending on time

  # def item_params
  #   params.require(:item).permit(:name, :description, :image_url)
  # end
end