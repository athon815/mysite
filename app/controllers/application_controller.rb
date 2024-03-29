class ApplicationController < ActionController::Base
	before_filter :require_login
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

private
def not_authenticated
	redirect_to login_path, alert: "Please login first"\
end
