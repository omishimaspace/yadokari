require 'rails_helper'

RSpec.describe "Yados", type: :request do
  describe "GET /yados" do
    it "works! (now write some real specs)" do
      get yados_path
      expect(response).to have_http_status(200)
    end
  end
end
