class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def create
    render json: Item.create(item_params)
  end

  def show
    render json: Item.find(params[:id])
  end

  def update
    render json: Item.update(params[:id], item_params)
  end

  def destroy
    render json: Item.delete(params[:id])
  end

private

  def item_params
    params.permit(:name, :description, :unit_price, :merchant_id)
  end
end
