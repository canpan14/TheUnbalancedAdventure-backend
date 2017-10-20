require 'rails_helper'

RSpec.describe "EnemyModifiers", type: :request do
  describe "GET /enemy_modifiers" do
    it "works! (now write some real specs)" do
      get enemy_modifiers_path
      expect(response).to have_http_status(200)
    end
  end
end
