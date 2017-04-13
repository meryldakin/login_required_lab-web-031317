class SessionsController < ApplicationController
  def new
  end

  def create
    if current_user.present?
      redirect_to :profile
    else
      redirect_to login_path
    end
  end

  def show

  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
