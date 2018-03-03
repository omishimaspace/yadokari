require 'rails_helper'

RSpec.describe "yados/new", type: :view do
  before(:each) do
    assign(:yado, Yado.new(
      :name => "MyString",
      :short_name => "MyString"
    ))
  end

  it "renders new yado form" do
    render

    assert_select "form[action=?][method=?]", yados_path, "post" do

      assert_select "input[name=?]", "yado[name]"

      assert_select "input[name=?]", "yado[short_name]"
    end
  end
end
