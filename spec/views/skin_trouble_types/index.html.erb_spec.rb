require 'rails_helper'

RSpec.describe "skin_trouble_types/index", type: :view do
  before(:each) do
    assign(:skin_trouble_types, [
      SkinTroubleType.create!(
        :name => "Name"
      ),
      SkinTroubleType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of skin_trouble_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
