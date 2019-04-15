class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
    @review = Document.where(user_review_id: current_user.id).where(state_review: false)
    @aprove = Document.where(user_aprove_id: current_user.id).where(state_aprove: false)
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
