require 'rails_helper'

RSpec.describe "yados/index", type: :view do
  before(:each) do
    assign(:yados, [
      Yado.create!(
        :name => "Name",
        :short_name => "Short Name"
      ),
      Yado.create!(
        :name => "Name",
        :short_name => "Short Name"
      )
    ])
  end

  it "renders a list of yados" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Name".to_s, :count => 2
  end
end
