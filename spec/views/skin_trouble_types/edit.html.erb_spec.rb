require 'rails_helper'

RSpec.describe "skin_trouble_types/edit", type: :view do
  before(:each) do
    @skin_trouble_type = assign(:skin_trouble_type, SkinTroubleType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit skin_trouble_type form" do
    render

    assert_select "form[action=?][method=?]", skin_trouble_type_path(@skin_trouble_type), "post" do

      assert_select "input[name=?]", "skin_trouble_type[name]"
    end
  end
end
