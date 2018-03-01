class OwnersController < ApplicationController

  def index
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.create(owner_params)
    if @owner.save
      redirect_to @owner
    else
      redirect_to home_path
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :email, :password)
  end

end
