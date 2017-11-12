require 'rails_helper'

RSpec.describe "news/index", type: :view do
  before(:each) do
    assign(:news, [
      News.create!(
        :news_type => nil,
        :content => "MyText",
        :state => 2
      ),
      News.create!(
        :news_type => nil,
        :content => "MyText",
        :state => 2
      )
    ])
  end

  it "renders a list of news" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
