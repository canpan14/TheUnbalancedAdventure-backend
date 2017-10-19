require "rails_helper"

RSpec.describe EnemiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/enemies").to route_to("enemies#index")
    end


    it "routes to #show" do
      expect(:get => "/enemies/1").to route_to("enemies#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/enemies").to route_to("enemies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/enemies/1").to route_to("enemies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/enemies/1").to route_to("enemies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/enemies/1").to route_to("enemies#destroy", :id => "1")
    end

  end
end
