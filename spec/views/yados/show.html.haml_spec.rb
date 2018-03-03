require 'rails_helper'

RSpec.describe "yados/show", type: :view do
  before(:each) do
    @yado = assign(:yado, Yado.create!(
      :name => "Name",
      :short_name => "Short Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Short Name/)
  end
end
