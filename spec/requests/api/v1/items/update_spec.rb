require 'rails_helper'

describe "ITEMS api" do
  before :each do
    @merchant = create(:merchant)
  end
  it "can update/put an item" do
    item_1 = create(:item, merchant_id: @merchant.id)
      id = create(:item, merchant_id: @merchant.id).id
      old_params = Item.last.name

      item_params = { name: "Kona Burger"}

      put "/api/v1/items/#{id}", params: item_params
      item = Item.find(id)

      expect(response).to be_successful
      expect(item.name).to_not eq(old_params)
      expect(item.name).to eq(item_params[:name])
      expect(item_1.name).to_not eq(item_params[:name])
  end
end
