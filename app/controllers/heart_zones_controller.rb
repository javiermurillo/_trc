class HeartZonesController < ApplicationController
  before_action :set_heart_zone, only: [:show, :edit, :update, :destroy]

  # GET /heart_zones
  # GET /heart_zones.json
  def index
    @heart_zones = HeartZone.all
  end

  # GET /heart_zones/1
  # GET /heart_zones/1.json
  def show
  end

  # GET /heart_zones/new
  def new
    @heart_zone = HeartZone.new
  end

  # GET /heart_zones/1/edit
  def edit
  end

  # POST /heart_zones
  # POST /heart_zones.json
  def create
    @heart_zone = HeartZone.new(heart_zone_params)

    respond_to do |format|
      if @heart_zone.save
        format.html { redirect_to @heart_zone, notice: 'Heart zone was successfully created.' }
        format.json { render :show, status: :created, location: @heart_zone }
      else
        format.html { render :new }
        format.json { render json: @heart_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heart_zones/1
  # PATCH/PUT /heart_zones/1.json
  def update
    respond_to do |format|
      if @heart_zone.update(heart_zone_params)
        format.html { redirect_to @heart_zone, notice: 'Heart zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @heart_zone }
      else
        format.html { render :edit }
        format.json { render json: @heart_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heart_zones/1
  # DELETE /heart_zones/1.json
  def destroy
    @heart_zone.destroy
    respond_to do |format|
      format.html { redirect_to heart_zones_url, notice: 'Heart zone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heart_zone
      @heart_zone = HeartZone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heart_zone_params
      params.require(:heart_zone).permit(:maxhr, :rhravg, :illness, :drugs, :age, :user_id)
    end
end
