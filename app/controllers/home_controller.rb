class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
    @review = Document.where(user_review_id: current_user.id)
    @aprove = Document.where(user_aprove_id: current_user.id)
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
