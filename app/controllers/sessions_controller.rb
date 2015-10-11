class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/login'
      # Log the user in and redirect to the user's show page.
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      flash.keep[:danger]="bop got em"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user=nil
    redirect_to root_url
  end
end
