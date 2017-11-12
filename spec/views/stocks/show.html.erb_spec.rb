require 'rails_helper'

RSpec.describe "stocks/show", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :product => nil,
      :quantity => 2,
      :in_status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
