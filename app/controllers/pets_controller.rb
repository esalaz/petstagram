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
    @posts = Post.where(pet_id: @pet.id)
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update_attributes(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to current_owner
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :image, :species, :breed, :favorite_thing, :owner_id)
  end

end
