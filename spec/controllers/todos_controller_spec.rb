require "spec_helper"

describe TodosController do
  render_views

  describe "#index" do
    it "assigns todos" do
      get :index
      expect(assigns(:todos)).to be
      expect(response.status).to eq(200)
    end
  end

  describe "#active" do
    it "assigns active todos" do
      FactoryGirl.create(:todo)
      FactoryGirl.create(:todo, :completed)

      get :active
      expect(assigns(:todos).size).to eq(1)
      expect(response.status).to eq(200)
    end
  end
end
