require 'rails_helper'

RSpec.describe UsersController do
  describe "POST create" do
    it "assigns @teams" do
      team = Team.create
      get :post
      expect(assigns(:teams)).to eq([team])
    end

    it "renders the index template" do
      get :post
      expect(response).to render_template("index")
    end
  end
end
