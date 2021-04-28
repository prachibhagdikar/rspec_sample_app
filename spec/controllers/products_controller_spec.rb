require 'rails_helper'
RSpec.describe ProductsController, type: :controller do
	before do
    @admin = FactoryGirl.create :admin
    log_in(@admin)
  end

  describe "index" do
  	
    it "admin user Should be able see products with new, edit lik of product" do
    	product = FactoryGirl.create :product
    end
  end
end