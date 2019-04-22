class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
    @review = Document.where(user_review_id: current_user.id).where(state_review: false, finish_document: true)
    @aprove = Document.where(user_aprove_id: current_user.id).where(state_aprove: false, finish_document: true, state_review: true)
  end

  def create_user
  	@user = User.all
  end

  def user

  end
  
end
