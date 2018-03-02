class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    pets = Pet.where(params[:owner_id])
    @pet_selector = pets.each.map { |pet|[pet.name, pet.id] }
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to @post
    else
      redirect_to home_path
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:image, :comment, :pet_id)
  end


end
