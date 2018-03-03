require 'rails_helper'

RSpec.describe "yados/edit", type: :view do
  before(:each) do
    @yado = assign(:yado, Yado.create!(
      :name => "MyString",
      :short_name => "MyString"
    ))
  end

  it "renders the edit yado form" do
    render

    assert_select "form[action=?][method=?]", yado_path(@yado), "post" do

      assert_select "input[name=?]", "yado[name]"

      assert_select "input[name=?]", "yado[short_name]"
    end
  end
end
