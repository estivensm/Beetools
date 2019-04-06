class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  end

  def create_user
  	@user = User.all
  end

  def user
  	respond_to do |format|
  		format.js
    end
  end
  
end
