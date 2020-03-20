require 'rails_helper'

describe 'ITEMs api' do
  it "can create a post route" do
    first_item = create (:item)
    item_info = {:id=>31, :name=>"Toy", :description=>"Cool", :unit_price=>1.5,
                :created_at=>"2020-03-20T20:41:14.833Z",
                :updated_at=>"2020-03-20T20:41:14.833Z"}
    post "/api/v1/items/#{first_item.id}", params: {item: item_info}

    item = Item.last

   expect(response).to be_successful
   require "pry"; binding.pry
   expect(item.name).to eq(item_info[:name])
   expect(item.description).to eq(item_info[:"description"])
  end
end
