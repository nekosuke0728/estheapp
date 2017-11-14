require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :product => nil,
        :quantity => 2,
        :in_status => false
      ),
      Stock.create!(
        :product => nil,
        :quantity => 2,
        :in_status => false
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
