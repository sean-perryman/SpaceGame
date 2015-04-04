class ShipsController < ApplicationController
  before_action :set_ship, only: [:show, :edit, :update, :destroy]

  def index
  	@ships = Ship.all
  end

  def show
  end

  def new
    @ship = Ship.new
  end

  def edit
  end

  def create
    @ship = Ship.new(ship_params)

    respond_to do |format|
      if @ship.save
        format.html { redirect_to @ship, notice: 'Ship was successfully created.' }
        format.json { render :show, status: :created, location: @ship }
      else
        format.html { render :new }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ship.update(ship_params)
        format.html { redirect_to @ship, notice: 'Ship was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship }
      else
        format.html { render :edit }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ship.destroy
    respond_to do |format|
      format.html { redirect_to ships_url, notice: 'Ship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship
      @ship = Ship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_params
      params.require(:ship).permit(:name, :base_fuel, :reactor_upgrades, :torpedo_bays, :base_cargo, :max_cargo, :ship_fighting_odds, :max_fighters, :max_shields, :cost)
    end
end