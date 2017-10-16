require "rails_helper"

RSpec.describe AdventurersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/adventurers").to route_to("adventurers#index")
    end


    it "routes to #show" do
      expect(:get => "/adventurers/1").to route_to("adventurers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/adventurers").to route_to("adventurers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/adventurers/1").to route_to("adventurers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/adventurers/1").to route_to("adventurers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/adventurers/1").to route_to("adventurers#destroy", :id => "1")
    end

  end
end
