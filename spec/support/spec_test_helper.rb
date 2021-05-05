module SpecTestHelper
  def log_in(user)
    post :create, session: {email: user.email, password: user.password, password_digest: user.password_digest}
  end
end 