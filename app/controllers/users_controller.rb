class UsersController < ApplicationController
  respond_to :json

  def index
    @users = User.all
    respond_with(@users)
  end
  
  def create
    @user = User.new(params[:user][:handle])
    @user.save
    respond_with(@user)
  end
end
