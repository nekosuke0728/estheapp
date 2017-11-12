require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :user_id => 2,
        :staff_id => 3,
        :esthe_menu_id => 4,
        :comment => "MyText"
      ),
      Reservation.create!(
        :user_id => 2,
        :staff_id => 3,
        :esthe_menu_id => 4,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
