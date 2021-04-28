require 'rails_helper'
RSpec.describe UsersController, type: :controller do

	before do
    @user = FactoryGirl.create :user
  end

  describe "create" do
    it "admin user renders template and shows products list" do

    end
  end
end