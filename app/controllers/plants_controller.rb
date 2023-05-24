class PlantsController < ApplicationController
  def new
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden), notice: "Plant added Succesfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    redirect_to garden_path(@plant.garden), notice: "Updated Succesfully!"
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to garden_path(@plant.garden), notice: "Delete Succesfully!"
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
