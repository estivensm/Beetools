class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy, :update_docu, :ready, :documents_pdf, :new_document]
  before_action :authenticate_user!
  include ApplicationHelper
  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @comments = DocumentComment.where(document_id: @document.id)
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  def new_document
    nuevo = {
      user_id: @document.user.id,
      document_type_id: @document.document_type.id,
      user_review_id: @document.user_review.id,
      name: @document.name,
      version: @document.version + 1,
      coding: @document.coding,
      document_source: @document.document_source,
      user_aprove_id: @document.user_aprove.id,
      proceso_id: @document.proceso.id,
      header: @document.header,
      footer: @document.footer,
      is_last: true,
    }

    @document.update(is_last: false)
    @new = Document.create(nuevo)

    if @new.save
        redirect_to edit_document_path(@new.id)
    end

  end

  def documents_pdf
      respond_to do |format|
        format.html
        format.pdf do
          render :pdf => "formatos1",
          :template => 'documents/pdfs/document.pdf.erb',
          :layout => 'pdf.html.erb',
          :show_as_html => params[:debug].present?
      end
    end 
  end


  def ready
    @document.update(finish_document: true);
    SendEmailJob.set(wait: 30.seconds).perform_later(@document, 1)
    @document.document_create!
  end

  # GET /documents/1/edit
  def edit
    if get_finish_document(@document.state_aprove, @document.state_review) == true
        render file: "#{Rails.root}/public/404", :layout => false, :status => :not_found
      else

      unless @document.user.id == current_user.id  
        render file: "#{Rails.root}/public/404", :layout => false, :status => :not_found
      end
    end
  end

  # POST /documents
  # POST /documents.json
  def create
      @document = Document.new(document_params)

      respond_to do |format|
        if @document.save
          format.html { 
            if @document.document_source == "Existente"
              redirect_to documents_path
              else

              redirect_to edit_document_path(@document.id), notice: 'Document was successfully created.' 
            end
          }
          format.json { render :show, status: :created, location: @document }
        else
          format.html { render :new }
          format.json { render json: @document.errors, status: :unprocessable_entity }
        end
      end
    
  end

  #bundle exec rake jobs:work
  #heroku run bundle exec rake jobs:work

  def update_docu
    if params[:number].to_i == 1
        @document.update(aprove_date: Time.now, state_aprove: true)
        @document.document_aprove!
      else
        @document.update(review_date: Time.now, state_review: true)
        @document.document_review!
        SendEmailJob.set(wait: 30.seconds).perform_later(@document, 2)
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        @document.document_type.field.each do |field|  
          if CreatedField.where(document_id: @document.id, field_id: field.id).any?
            CreatedField.where(document_id: @document.id, field_id: field.id).last.update(content: params[:"#{field.name}"])

          else
            CreatedField.create(field_id: field.id , document_id: @document.id, content: params[:"#{field.name}"], user_id: current_user.id)
          end
        end
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit!
    end
end
