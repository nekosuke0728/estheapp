require 'rails_helper'

RSpec.describe "item_types/show", type: :view do
  before(:each) do
    @item_type = assign(:item_type, ItemType.create!(
      :category => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
