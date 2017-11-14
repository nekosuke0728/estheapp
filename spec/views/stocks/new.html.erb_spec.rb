require 'rails_helper'

RSpec.describe "stocks/new", type: :view do
  before(:each) do
    assign(:stock, Stock.new(
      :product => nil,
      :quantity => 1,
      :in_status => false
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input[name=?]", "stock[product_id]"

      assert_select "input[name=?]", "stock[quantity]"

      assert_select "input[name=?]", "stock[in_status]"
    end
  end
end
