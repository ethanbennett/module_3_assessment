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
    @item = Item.new(item_params)
    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    head :no_content
  end

private
  
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.permit(:name, :description, :image_url)
  end
end