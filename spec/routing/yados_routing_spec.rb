require "rails_helper"

RSpec.describe YadosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/yados").to route_to("yados#index")
    end

    it "routes to #new" do
      expect(:get => "/yados/new").to route_to("yados#new")
    end

    it "routes to #show" do
      expect(:get => "/yados/1").to route_to("yados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/yados/1/edit").to route_to("yados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/yados").to route_to("yados#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/yados/1").to route_to("yados#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/yados/1").to route_to("yados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/yados/1").to route_to("yados#destroy", :id => "1")
    end

  end
end
