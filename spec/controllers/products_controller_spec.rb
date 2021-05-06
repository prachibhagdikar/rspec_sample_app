require 'rails_helper'
RSpec.describe ProductsController, type: :controller do
	
  describe "index" do  	
  	let(:admin) {create :admim }
  	before do
      controller.stub(:current_user){ admin }
    end
    it "admin user Should be able see products with new, edit lik of product" do
	    get :index
	    expect(response).to render_template("index")
    end
  end
end