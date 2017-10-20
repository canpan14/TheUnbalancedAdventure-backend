require "rails_helper"

RSpec.describe EnemyModifiersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/enemy_modifiers").to route_to("enemy_modifiers#index")
    end


    it "routes to #show" do
      expect(:get => "/enemy_modifiers/1").to route_to("enemy_modifiers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/enemy_modifiers").to route_to("enemy_modifiers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/enemy_modifiers/1").to route_to("enemy_modifiers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/enemy_modifiers/1").to route_to("enemy_modifiers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/enemy_modifiers/1").to route_to("enemy_modifiers#destroy", :id => "1")
    end

  end
end
