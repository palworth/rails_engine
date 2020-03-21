require 'rails_helper'

describe 'ITEMs api' do
  before :each do
    @merchant = create(:merchant)
  end
  it "can create a post route" do
    item_params = { :name=>"Toy", :description=>"Cool", :unit_price=>1.5,
                :merchant_id => @merchant.id}
    post "/api/v1/items", params: item_params
    item = Item.last

    item = Item.last
   expect(response).to be_successful
   expect(item.name).to eq(item_params[:name])
   expect(item.description).to eq(item_params[:"description"])
  end
end
