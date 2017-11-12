require 'rails_helper'

RSpec.describe "esthe_menus/edit", type: :view do
  before(:each) do
    @esthe_menu = assign(:esthe_menu, EstheMenu.create!(
      :name => "MyString",
      :time_frame => 1,
      :description => "MyText",
      :price => 1
    ))
  end

  it "renders the edit esthe_menu form" do
    render

    assert_select "form[action=?][method=?]", esthe_menu_path(@esthe_menu), "post" do

      assert_select "input[name=?]", "esthe_menu[name]"

      assert_select "input[name=?]", "esthe_menu[time_frame]"

      assert_select "textarea[name=?]", "esthe_menu[description]"

      assert_select "input[name=?]", "esthe_menu[price]"
    end
  end
end
