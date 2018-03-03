require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :name => "Name",
        :email => "Email",
        :tel => "Tel",
        :check_in_time => "Check In At",
        :men_number => 2,
        :women_number => 3,
        :purpose_of_use => "Purpose Of Use",
        :payment_method => "Payment Method",
        :coupon => "Coupon",
        :note => "Note",
        :status => "Status",
        :token => "Token"
      ),
      Reservation.create!(
        :name => "Name",
        :email => "Email",
        :tel => "Tel",
        :check_in_time => "Check In At",
        :men_number => 2,
        :women_number => 3,
        :purpose_of_use => "Purpose Of Use",
        :payment_method => "Payment Method",
        :coupon => "Coupon",
        :note => "Note",
        :status => "Status",
        :token => "Token"
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Check In At".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Purpose Of Use".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Method".to_s, :count => 2
    assert_select "tr>td", :text => "Coupon".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end
