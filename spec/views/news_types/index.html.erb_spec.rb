require 'rails_helper'

RSpec.describe "news_types/index", type: :view do
  before(:each) do
    assign(:news_types, [
      NewsType.create!(
        :name => "Name"
      ),
      NewsType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of news_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
