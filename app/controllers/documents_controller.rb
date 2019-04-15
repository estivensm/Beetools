class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy, :update_docu]

  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.where(user_id: current_user.id )
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit

  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)

    respond_to do |format|
      if @document.save
        format.html { redirect_to edit_document_path(@document.id), notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end


  def update_docu
    if params[:number].to_i == 1
        @document.update(aprove_date: params[:aprove_date])
      else
        @document.update(review_date: params[:review_date])
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