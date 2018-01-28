class Api::UsersController < ApplicationController
  before_action :set_user, only: [:show,:update,:destroy]

def index
  @users = User.all
  render json: @users, status: 200
end

def create
  user = User.create(name:params["name"], email:params["email"], password:params["password"], username:params["username"])
  render json: user, status: 201
end

def update
  @user.update(user_params)
  render json: @user, status: 200
end

def destroy
  userId = @user.id
  @user.destroy
  render json: {message:"Zap! user deleted", userId:userId}
end

def show
  render json: @user, status: 200
end

private
def user_params
  # params.require(:user).permit(:name,:email,:username,:password)
  params.permit(:name,:email,:username,:password)
end

def set_user
  @user = User.find(params[:id])
end


end
