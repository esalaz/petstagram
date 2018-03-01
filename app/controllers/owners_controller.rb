class OwnersController < ApplicationController

  def index
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.create(owner_params)
  end

  private

  def owner_params

  end

end
