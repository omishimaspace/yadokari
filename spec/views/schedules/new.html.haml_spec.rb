require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      :reservation_id => 1,
      :schedule_type => "MyString"
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input[name=?]", "schedule[reservation_id]"

      assert_select "input[name=?]", "schedule[schedule_type]"
    end
  end
end
