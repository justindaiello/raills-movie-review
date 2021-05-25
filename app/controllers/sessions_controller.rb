class SessionsController < ApplicationController
  def new; end

  # rubocop:disable Metrics/AbcSize
  def create
    user = User.find_by(email: params[:email_or_username]) ||
           User.find_by(username: params[:email_or_username])

    # rubocop:enable Metrics/AbcSize
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to (session[:intended_url] || user), notice: "Welcome back #{user.name}"

      session[:intended_url] = nil
    else
      flash.now[:alert] = 'Invalid username/password combination!'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to movies_url, notice: "You've been sign out!"
  end
end
