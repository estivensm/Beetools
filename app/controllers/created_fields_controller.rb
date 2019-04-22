class CreatedFieldsController < ApplicationController
  before_action :set_created_field, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /created_fields
  # GET /created_fields.json
  def index
    @created_fields = CreatedField.all
  end

  # GET /created_fields/1
  # GET /created_fields/1.json
  def show
  end

  # GET /created_fields/new
  def new
    @created_field = CreatedField.new
  end

  # GET /created_fields/1/edit
  def edit
  end

  # POST /created_fields
  # POST /created_fields.json
  def create
    @created_field = CreatedField.new(created_field_params)

    respond_to do |format|
      if @created_field.save
        format.html { redirect_to @created_field, notice: 'Created field was successfully created.' }
        format.json { render :show, status: :created, location: @created_field }
      else
        format.html { render :new }
        format.json { render json: @created_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /created_fields/1
  # PATCH/PUT /created_fields/1.json
  def update
    respond_to do |format|
      if @created_field.update(created_field_params)
        format.html { redirect_to @created_field, notice: 'Created field was successfully updated.' }
        format.json { render :show, status: :ok, location: @created_field }
      else
        format.html { render :edit }
        format.json { render json: @created_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /created_fields/1
  # DELETE /created_fields/1.json
  def destroy
    @created_field.destroy
    respond_to do |format|
      format.html { redirect_to created_fields_url, notice: 'Created field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_created_field
      @created_field = CreatedField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def created_field_params
      params.require(:created_field).permit(:content, :document_id, :field_id, :admin_user, :user_id)
    end
end
