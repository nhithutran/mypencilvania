require 'rails_helper'

RSpec.describe "listings/new", type: :view do
  before(:each) do
    assign(:listing, Listing.new(
      title: "MyString",
      description: nil,
      condition: 1,
      price: 1,
      sold: false,
      user: "",
      categories: nil
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[description]"

      assert_select "input[name=?]", "listing[condition]"

      assert_select "input[name=?]", "listing[price]"

      assert_select "input[name=?]", "listing[sold]"

      assert_select "input[name=?]", "listing[user]"

      assert_select "input[name=?]", "listing[categories_id]"
    end
  end
end
