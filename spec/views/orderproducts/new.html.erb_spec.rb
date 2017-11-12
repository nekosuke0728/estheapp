require 'rails_helper'

RSpec.describe "orderproducts/new", type: :view do
  before(:each) do
    assign(:orderproduct, Orderproduct.new(
      :order => nil,
      :product => nil,
      :quantity => 1,
      :sub_total => 1
    ))
  end

  it "renders new orderproduct form" do
    render

    assert_select "form[action=?][method=?]", orderproducts_path, "post" do

      assert_select "input[name=?]", "orderproduct[order_id]"

      assert_select "input[name=?]", "orderproduct[product_id]"

      assert_select "input[name=?]", "orderproduct[quantity]"

      assert_select "input[name=?]", "orderproduct[sub_total]"
    end
  end
end
