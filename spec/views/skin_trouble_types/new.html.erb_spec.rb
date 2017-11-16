require 'rails_helper'

RSpec.describe "skin_trouble_types/new", type: :view do
  before(:each) do
    assign(:skin_trouble_type, SkinTroubleType.new(
      :name => "MyString"
    ))
  end

  it "renders new skin_trouble_type form" do
    render

    assert_select "form[action=?][method=?]", skin_trouble_types_path, "post" do

      assert_select "input[name=?]", "skin_trouble_type[name]"
    end
  end
end
