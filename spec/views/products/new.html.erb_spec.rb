require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :brand => nil,
      :category => nil,
      :price => 1,
      :description => "MyText",
      :status => false
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[brand_id]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "input[name=?]", "product[price]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[status]"
    end
  end
end
