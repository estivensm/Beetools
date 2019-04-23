class DocumentCommentsController < ApplicationController
  before_action :set_document, only: [:destroy]

  def create
  	@comment = DocumentComment.create(contact_params)

  	respond_to do |format|
      if @comment.save
        format.js
        puts "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      else
        format.html { render :new }
      end
    end
  	
  end


  def comment_index
  	@document = Document.find(params[:commen])
  	respond_to do |format|
  		format.js
    end
  end

  def destroy
  	if @document_comment.destroy
        redirect_to admin_contact_path
        flash[:delete] = "Eliminado"
      else 
        redirect_to admin_contact_path
    end
  end

  private 

  def set_document
  	@document_comment = DocumentComment.find(params[:id])
  end

  def contact_params
    params.permit(:document_id, :user_id, :title, :description, :file)
  end

end
