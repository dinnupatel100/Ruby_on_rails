class BlogsController < ApplicationController
  
  def index
    render json: Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new("p_name": params[:p_name],"p_type": params[:p_type],"user_id": params[:user_id])
    if @post.save
      render json: {message: "Saved Succesfully"}
    else
      render json: @post.errors
    end
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def update
    if Post.update(params[:id],"p_name": params[:p_name])
      render json: Post.find(params[:id])
    else
      render json: "Something Wrong"
    end
  end

  def destroy
    if Post.delete(params[:id])
      render json: "Deleted Successfully"
    else 
      render json: "Something Wrong"
    end
  end


end
