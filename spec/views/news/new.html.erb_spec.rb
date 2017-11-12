require 'rails_helper'

RSpec.describe "news/new", type: :view do
  before(:each) do
    assign(:news, News.new(
      :news_type => nil,
      :content => "MyText",
      :state => 1
    ))
  end

  it "renders new news form" do
    render

    assert_select "form[action=?][method=?]", news_index_path, "post" do

      assert_select "input[name=?]", "news[news_type_id]"

      assert_select "textarea[name=?]", "news[content]"

      assert_select "input[name=?]", "news[state]"
    end
  end
end
