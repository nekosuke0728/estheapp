require 'rails_helper'

RSpec.describe "news_types/edit", type: :view do
  before(:each) do
    @news_type = assign(:news_type, NewsType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit news_type form" do
    render

    assert_select "form[action=?][method=?]", news_type_path(@news_type), "post" do

      assert_select "input[name=?]", "news_type[name]"
    end
  end
end
