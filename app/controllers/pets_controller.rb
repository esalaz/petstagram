class PetsController < ApplicationController

  def index
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    if @pet.save
      redirect_to @pet
    else
      redirect_to owner_path
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :image, :type, :breed, :favorite_thing, :owner_id)
  end

end
