class Api::V1::MerchantsController < ApplicationController

  def index
    # require "pry"; binding.pry
    render json: Merchant.all
  end

  # def create
  #   render json: Item.create(item_params)
  # end
end
