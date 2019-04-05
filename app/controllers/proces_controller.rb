class ProcesController < ApplicationController
  before_action :set_proce, only: [:show, :edit, :update, :destroy]

  # GET /proces
  # GET /proces.json
  def index
    @proces = Proce.all
  end

  # GET /proces/1
  # GET /proces/1.json
  def show
  end

  # GET /proces/new
  def new
    @proce = Proce.new
  end

  # GET /proces/1/edit
  def edit
  end

  # POST /proces
  # POST /proces.json
  def create
    @proce = Proce.new(proce_params)

    respond_to do |format|
      if @proce.save
        format.html { redirect_to @proce, notice: 'Proce was successfully created.' }
        format.json { render :show, status: :created, location: @proce }
      else
        format.html { render :new }
        format.json { render json: @proce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proces/1
  # PATCH/PUT /proces/1.json
  def update
    respond_to do |format|
      if @proce.update(proce_params)
        format.html { redirect_to @proce, notice: 'Proce was successfully updated.' }
        format.json { render :show, status: :ok, location: @proce }
      else
        format.html { render :edit }
        format.json { render json: @proce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proces/1
  # DELETE /proces/1.json
  def destroy
    @proce.destroy
    respond_to do |format|
      format.html { redirect_to proces_url, notice: 'Proce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proce
      @proce = Proce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proce_params
      params.require(:proce).permit(:name, :description, :admin_user, :user_id, :proces_type)
    end
end
