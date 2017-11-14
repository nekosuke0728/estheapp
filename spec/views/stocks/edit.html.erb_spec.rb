require 'rails_helper'

RSpec.describe "stocks/edit", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :product => nil,
      :quantity => 1,
      :in_status => false
    ))
  end

  it "renders the edit stock form" do
    render

    assert_select "form[action=?][method=?]", stock_path(@stock), "post" do

      assert_select "input[name=?]", "stock[product_id]"

      assert_select "input[name=?]", "stock[quantity]"

      assert_select "input[name=?]", "stock[in_status]"
    end
  end
end
