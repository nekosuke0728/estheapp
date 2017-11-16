require 'rails_helper'

RSpec.describe "skin_trouble_types/show", type: :view do
  before(:each) do
    @skin_trouble_type = assign(:skin_trouble_type, SkinTroubleType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
