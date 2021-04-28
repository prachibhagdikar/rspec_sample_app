class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      if user.is_admin?
      	redirect_to products_path
      else
      	redirect_to list_path
      end
    else
    	puts 'Invalid email/password combination'
      flash[:alert] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  	log_out
    redirect_to root_url
  end
end
