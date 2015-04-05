class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :edit, :update, :destroy]

  def index
  	@planets = Planet.all
  end

  def new
  	@planet = Planet.new
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def create
    @planet = Planet.new(planet_params)

    respond_to do |format|
      if @planet.save
        format.html { redirect_to @planet, notice: 'Planet was successfully created.' }
        format.json { render :show, status: :created, location: @planet }
      else
        format.html { render :new }
        format.json { render json: @planet.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def update
    respond_to do |format|
      if @planet.update(planet_params)
        format.html { redirect_to @planet, notice: 'Planet was successfully updated.' }
        format.json { render :show, status: :ok, location: @planet }
      else
        format.html { render :edit }
        format.json { render json: @planet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @planet.destroy
    respond_to do |format|
      format.html { redirect_to planets_url, notice: 'Planet was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planet
      @planet = Planet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planet_params
      params.require(:planet).permit(:name, :owned_by, :world_id, :planetary_defense)
   end
end