class UsersController < ApplicationController

  before_action :authenticate_user, except: [:create]

  def new
  end

  def current
    render json: current_user
  end # current

  def create

    @user = User.new user_params
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end # if else

  end # create

  def edit
  end

  def show
  end

  def delete
  end



  private

  def user_params

    params.require(:user).permit(:name, :email, :password, :password_confirmation, :user_type)

  end # user_params


end # UsersController
