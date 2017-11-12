require 'rails_helper'

RSpec.describe "esthe_menus/index", type: :view do
  before(:each) do
    assign(:esthe_menus, [
      EstheMenu.create!(
        :name => "Name",
        :time_frame => 2,
        :description => "MyText",
        :price => 3
      ),
      EstheMenu.create!(
        :name => "Name",
        :time_frame => 2,
        :description => "MyText",
        :price => 3
      )
    ])
  end

  it "renders a list of esthe_menus" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
