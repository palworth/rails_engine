require 'rails_helper'

describe "ITEMS api" do
  it "can update/put an item" do
    id = create(:item).id
    old_name = Item.last.name
    new_name = {name: "Coolio"}

    put "/api/v1/items/#{id}", params: {item: new_name}
    item = Item.find_by(id: id)

    expect(response).to be_successful
    expect(item.name).to eq(new_name[:name])
  end
end
