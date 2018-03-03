require 'rails_helper'

RSpec.describe "reservations/new", type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
      :name => "MyString",
      :email => "MyString",
      :tel => "MyString",
      :check_in_time => "MyString",
      :men_number => 1,
      :women_number => 1,
      :purpose_of_use => "MyString",
      :payment_method => "MyString",
      :coupon => "MyString",
      :note => "MyString",
      :status => "MyString",
      :token => "MyString"
    ))
  end

  it "renders new reservation form" do
    render

    assert_select "form[action=?][method=?]", reservations_path, "post" do

      assert_select "input[name=?]", "reservation[name]"

      assert_select "input[name=?]", "reservation[email]"

      assert_select "input[name=?]", "reservation[tel]"

      assert_select "input[name=?]", "reservation[check_in_time]"

      assert_select "input[name=?]", "reservation[men_number]"

      assert_select "input[name=?]", "reservation[women_number]"

      assert_select "input[name=?]", "reservation[purpose_of_use]"

      assert_select "input[name=?]", "reservation[payment_method]"

      assert_select "input[name=?]", "reservation[coupon]"

      assert_select "input[name=?]", "reservation[note]"

      assert_select "input[name=?]", "reservation[status]"

      assert_select "input[name=?]", "reservation[token]"
    end
  end
end
