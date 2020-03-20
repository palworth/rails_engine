require 'rails_helper'

describe "ITEMs api" do
  it "can provide the correct show json, limited by ID" do
    id = create(:item).id

    get "/api/v1/items/#{id}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item["id"]).to eq(id)
  end
end
