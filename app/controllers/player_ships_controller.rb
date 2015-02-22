class PlayerShipsController < ApplicationController
  before_action :set_player_ship, only: [:show, :edit, :update, :destroy]

  # GET /player_ships
  # GET /player_ships.json
  def index
    @player_ships = PlayerShip.all
  end

  # GET /player_ships/1
  # GET /player_ships/1.json
  def show
  end

  # GET /player_ships/new
  def new
    @player_ship = PlayerShip.new
  end

  # GET /player_ships/1/edit
  def edit
  end

  # POST /player_ships
  # POST /player_ships.json
  def create
    @player_ship = PlayerShip.new(player_ship_params)

    respond_to do |format|
      if @player_ship.save
        format.html { redirect_to @player_ship, notice: 'Player ship was successfully created.' }
        format.json { render :show, status: :created, location: @player_ship }
      else
        format.html { render :new }
        format.json { render json: @player_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_ships/1
  # PATCH/PUT /player_ships/1.json
  def update
    respond_to do |format|
      if @player_ship.update(player_ship_params)
        format.html { redirect_to @player_ship, notice: 'Player ship was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_ship }
      else
        format.html { render :edit }
        format.json { render json: @player_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_ships/1
  # DELETE /player_ships/1.json
  def destroy
    @player_ship.destroy
    respond_to do |format|
      format.html { redirect_to player_ships_url, notice: 'Player ship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_ship
      @player_ship = PlayerShip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_ship_params
      params.require(:player_ship).permit(:captain_id, :ship_id, :name, :fuel_total, :fuel_remaining, :cargo_spaces, :fighters)
    end
end
