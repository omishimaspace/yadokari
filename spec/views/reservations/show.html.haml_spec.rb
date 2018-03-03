require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :name => "Name",
      :email => "Email",
      :tel => "Tel",
      :check_in_time => "Check In At",
      :mens_number => 2,
      :womens_number => 3,
      :purpose_of_use => "Purpose Of Use",
      :payment_method => "Payment Method",
      :coupon => "Coupon",
      :note => "Note",
      :status => "Status",
      :token => "Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Check In At/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Purpose Of Use/)
    expect(rendered).to match(/Payment Method/)
    expect(rendered).to match(/Coupon/)
    expect(rendered).to match(/Note/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Token/)
  end
end
