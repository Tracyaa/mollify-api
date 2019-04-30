class Api::V1::PostsController < ApplicationController

  before_action :find_post, only: [:update]

  def index
    @posts = Post.all
    render json: @posts
  end

  def update
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def post_params
    params.permit(:student_id, :gender_preference, :type, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
