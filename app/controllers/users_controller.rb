class UsersController < ApplicationController
	before_action :authenticate_user!
	def index
		render :json => { :users => User.all }
	end
end
