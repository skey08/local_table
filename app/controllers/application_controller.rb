class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate
  #
  # session[:user_id] = @current_user.id
  # User.find(session[:user_id])

  private
  def authenticate
    if !session[:user]
      redirect_to "/sign_in"
    end
  end
end
