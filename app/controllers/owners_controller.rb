class OwnersController < ApplicationController

  def index
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.create(owner_params)
    if @owner.save
      login(@owner)
      redirect_to @owner
    else
      redirect_to home_path
    end
  end

  def show
    if current_owner == Owner.find(params[:id])
      @owner = Owner.find(params[:id])
    else
      redirect_to new_session_path
    end
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :email, :password)
  end

end
