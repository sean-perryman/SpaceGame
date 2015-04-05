class PlanetInventoriesController < ApplicationController
	before_action :set_planet_inventory, only: [:show, :edit, :update, :destroy]

  def index
  	@planet_inventories = PlanetInventory.all
  end

  def new
  	@planet_inventory = PlanetInventory.new
  end

  def edit
  end

  def create
    @planet_inventory = PlanetInventory.new(planet_inventory_params)

    respond_to do |format|
      if @planet_inventory.save
        format.html { redirect_to new_planet_inventory_path, notice: 'planet_inventory was successfully created.' }
        format.json { render :show, status: :created, location: @planet_inventory }
      else
        format.html { render :new }
        format.json { render json: @planet_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def update
    respond_to do |format|
      if @planet_inventory.update(planet_inventory_params)
        format.html { redirect_to @planet_inventory, notice: 'Planet inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @planet_inventory }
      else
        format.html { render :edit }
        format.json { render json: @planet_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @planet_inventory = PlanetInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planet_inventory_params
      params.require(:planet_inventory).permit(:planet_id, :item_id, :amount, :price_modifier)
   end
end