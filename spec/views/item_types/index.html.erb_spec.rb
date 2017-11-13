require 'rails_helper'

RSpec.describe "item_types/index", type: :view do
  before(:each) do
    assign(:item_types, [
      ItemType.create!(
        :category => nil,
        :name => "Name"
      ),
      ItemType.create!(
        :category => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of item_types" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
