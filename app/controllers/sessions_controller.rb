class SessionsController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.confirm(owner_params)
    if @owner
      login(@owner)
      redirect_to @owner
    else
      redirect_to new_owner_path
    end
  end

  private

  def owner_params
    params.require(:owner).permit(:email, :password)
  end

end
