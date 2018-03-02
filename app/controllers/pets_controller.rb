class PetsController < ApplicationController

  def index
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    redirect_to current_owner
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :image, :species, :breed, :favorite_thing, :owner_id)
  end

end
