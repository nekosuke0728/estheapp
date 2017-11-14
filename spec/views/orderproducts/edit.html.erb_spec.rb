require 'rails_helper'

RSpec.describe "orderproducts/edit", type: :view do
  before(:each) do
    @orderproduct = assign(:orderproduct, Orderproduct.create!(
      :order => nil,
      :product => nil,
      :quantity => 1,
      :sub_total => 1
    ))
  end

  it "renders the edit orderproduct form" do
    render

    assert_select "form[action=?][method=?]", orderproduct_path(@orderproduct), "post" do

      assert_select "input[name=?]", "orderproduct[order_id]"

      assert_select "input[name=?]", "orderproduct[product_id]"

      assert_select "input[name=?]", "orderproduct[quantity]"

      assert_select "input[name=?]", "orderproduct[sub_total]"
    end
  end
end
