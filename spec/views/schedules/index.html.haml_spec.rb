require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        :reservation_id => 2,
        :schedule_type => "Schedule Type"
      ),
      Schedule.create!(
        :reservation_id => 2,
        :schedule_type => "Schedule Type"
      )
    ])
  end

  it "renders a list of schedules" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Schedule Type".to_s, :count => 2
  end
end
