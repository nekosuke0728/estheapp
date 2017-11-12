require 'rails_helper'

RSpec.describe "esthe_menus/show", type: :view do
  before(:each) do
    @esthe_menu = assign(:esthe_menu, EstheMenu.create!(
      :name => "Name",
      :time_frame => 2,
      :description => "MyText",
      :price => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
  end
end
