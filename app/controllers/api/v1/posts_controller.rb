class Api::V1::PostsController < ApplicationController

  before_action :find_post, only: [:update, :destroy]

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

  def destroy
    # render json: @post
    @post.destroy
  end

  private

  def post_params
    params.permit(:student_id, :counselor_id, :gender_preference, :type, :content, :activated, :requested, :video_room_link, :video_room_name)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
