class ProcessMapsController < ApplicationController
  before_action :set_process_map, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /process_maps
  # GET /process_maps.json
  def index
    @process_maps = ProcessMap.all
  end

  # GET /process_maps/1
  # GET /process_maps/1.json
  def show
  end

  # GET /process_maps/new
  def new
    @process_map = ProcessMap.new
  end

  # GET /process_maps/1/edit
  def edit
  end

  # POST /process_maps
  # POST /process_maps.json
  def create
    @process_map = ProcessMap.new(process_map_params)

    respond_to do |format|
      if @process_map.save
        format.html { redirect_to process_maps_path, notice: 'Process map was successfully created.' }
        format.json { render :show, status: :created, location: @process_map }
      else
        format.html { render :new }
        format.json { render json: @process_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /process_maps/1
  # PATCH/PUT /process_maps/1.json
  def update
    respond_to do |format|
      if @process_map.update(process_map_params)
        format.html { redirect_to process_maps_path, notice: 'Process map was successfully updated.' }
        format.json { render :show, status: :ok, location: @process_map }
      else
        format.html { render :edit }
        format.json { render json: @process_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /process_maps/1
  # DELETE /process_maps/1.json
  def destroy
    @process_map.destroy
    respond_to do |format|
      format.html { redirect_to process_maps_url, notice: 'Process map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_process_map
      @process_map = ProcessMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def process_map_params
      params.require(:process_map).permit(:file, :admin_user, :user_id, :version)
    end
end
