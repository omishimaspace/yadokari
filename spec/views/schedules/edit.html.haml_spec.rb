require 'rails_helper'

RSpec.describe "schedules/edit", type: :view do
  before(:each) do
    @schedule = assign(:schedule, Schedule.create!(
      :reservation_id => 1,
      :schedule_type => "MyString"
    ))
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(@schedule), "post" do

      assert_select "input[name=?]", "schedule[reservation_id]"

      assert_select "input[name=?]", "schedule[schedule_type]"
    end
  end
end
