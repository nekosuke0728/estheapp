require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :name => "Name"
      ),
      Payment.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
