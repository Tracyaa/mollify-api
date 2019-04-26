class Api::V1::UsersController < ApplicationController
  
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      @token = JWT.encode({user_id: @user.id}, "secret")
      render json: { user: @user.username, jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation, :gender, :age, :school, :location)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
