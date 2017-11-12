require 'rails_helper'

RSpec.describe "news/edit", type: :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :news_type => nil,
      :content => "MyText",
      :state => 1
    ))
  end

  it "renders the edit news form" do
    render

    assert_select "form[action=?][method=?]", news_path(@news), "post" do

      assert_select "input[name=?]", "news[news_type_id]"

      assert_select "textarea[name=?]", "news[content]"

      assert_select "input[name=?]", "news[state]"
    end
  end
end
