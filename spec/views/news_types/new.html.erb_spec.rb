require 'rails_helper'

RSpec.describe "news_types/new", type: :view do
  before(:each) do
    assign(:news_type, NewsType.new(
      :name => "MyString"
    ))
  end

  it "renders new news_type form" do
    render

    assert_select "form[action=?][method=?]", news_types_path, "post" do

      assert_select "input[name=?]", "news_type[name]"
    end
  end
end
