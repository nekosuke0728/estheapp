require 'rails_helper'

RSpec.describe "orderproducts/show", type: :view do
  before(:each) do
    @orderproduct = assign(:orderproduct, Orderproduct.create!(
      :order => nil,
      :product => nil,
      :quantity => 2,
      :sub_total => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
