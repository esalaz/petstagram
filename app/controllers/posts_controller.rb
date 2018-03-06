class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    pets = Pet.where(owner_id: current_owner.id)
    @pet_selector = pets.each.map { |pet|[pet.name, pet.id] }
  end

  def create
    @post = Post.create(post_params)
    @pet = @post.pet_id
    @post.save
    redirect_to "/pets/#{@pet}"
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @pets = Pet.where(owner_id: current_owner.id)
    @pet_selector = @pets.each.map { |pet|[pet.name, pet.id] }
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @pet = @post.pet_id
    @post.destroy
    redirect_to "/pets/#{@pet}"
  end

  private

  def post_params
    params.require(:post).permit(:image, :comment, :pet_id)
  end


end
