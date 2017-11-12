require 'rails_helper'

RSpec.describe "news/show", type: :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :news_type => nil,
      :content => "MyText",
      :state => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
