class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    @user = User.find_by_username_and_password_digest(params[:username], params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to me_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end
end
