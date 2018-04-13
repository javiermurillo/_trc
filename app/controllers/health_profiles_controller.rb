class HealthProfilesController < ApplicationController
  before_action :set_health_profile, only: [:show, :edit, :update, :destroy]

  # GET /health_profiles
  # GET /health_profiles.json
  def index
    @health_profiles = HealthProfile.all
  end

  # GET /health_profiles/1
  # GET /health_profiles/1.json
  def show
  end

  # GET /health_profiles/new
  def new
    @health_profile = HealthProfile.new
  end

  # GET /health_profiles/1/edit
  def edit
  end

  # POST /health_profiles
  # POST /health_profiles.json
  def create
    @health_profile = HealthProfile.new(health_profile_params)

    respond_to do |format|
      if @health_profile.save
        format.html { redirect_to @health_profile, notice: 'Health profile was successfully created.' }
        format.json { render :show, status: :created, location: @health_profile }
      else
        format.html { render :new }
        format.json { render json: @health_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_profiles/1
  # PATCH/PUT /health_profiles/1.json
  def update
    respond_to do |format|
      if @health_profile.update(health_profile_params)
        format.html { redirect_to @health_profile, notice: 'Health profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_profile }
      else
        format.html { render :edit }
        format.json { render json: @health_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_profiles/1
  # DELETE /health_profiles/1.json
  def destroy
    @health_profile.destroy
    respond_to do |format|
      format.html { redirect_to health_profiles_url, notice: 'Health profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_profile
      @health_profile = HealthProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_profile_params
      params.require(:health_profile).permit(:birthday, :weight, :gender, :illness, :user_id)
    end
end
