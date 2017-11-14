require 'rails_helper'

RSpec.describe "orderproducts/index", type: :view do
  before(:each) do
    assign(:orderproducts, [
      Orderproduct.create!(
        :order => nil,
        :product => nil,
        :quantity => 2,
        :sub_total => 3
      ),
      Orderproduct.create!(
        :order => nil,
        :product => nil,
        :quantity => 2,
        :sub_total => 3
      )
    ])
  end

  it "renders a list of orderproducts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
