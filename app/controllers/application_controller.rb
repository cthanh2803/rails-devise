class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :update_allowed_parameters, if: :devise_controller?
  
	protected
  
	def update_allowed_parameters
	  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :password, :username)}
	  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password, :current_password, :username)}
	  devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :username, :remember_me)}
	end

	def after_sign_in_path_for(resource)
		users_path
	end
end
