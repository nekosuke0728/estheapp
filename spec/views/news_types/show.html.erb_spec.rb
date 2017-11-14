require 'rails_helper'

RSpec.describe "news_types/show", type: :view do
  before(:each) do
    @news_type = assign(:news_type, NewsType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
