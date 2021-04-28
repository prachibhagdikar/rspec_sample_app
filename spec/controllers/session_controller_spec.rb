require 'rails_helper'
RSpec.describe SessionsController, type: :controller do

  before do
    @admin = FactoryGirl.create :admin
    @user = FactoryGirl.create :user
  end

  describe "create" do
    it "admin user renders template and shows products with edit show links" do
      log_in(@admin)
      expect(response).to redirect_to("/products")
      FactoryGirl.create :product
    end

    it "normal user renders template and shows products list " do
      log_in(@user)
      expect(response).to redirect_to("/list")
    end
  end
end