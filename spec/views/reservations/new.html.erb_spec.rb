require 'rails_helper'

RSpec.describe "reservations/new", type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
      :user_id => 1,
      :staff_id => 1,
      :esthe_menu_id => 1,
      :comment => "MyText"
    ))
  end

  it "renders new reservation form" do
    render

    assert_select "form[action=?][method=?]", reservations_path, "post" do

      assert_select "input[name=?]", "reservation[user_id]"

      assert_select "input[name=?]", "reservation[staff_id]"

      assert_select "input[name=?]", "reservation[esthe_menu_id]"

      assert_select "textarea[name=?]", "reservation[comment]"
    end
  end
end
