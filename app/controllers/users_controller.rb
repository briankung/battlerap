class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]
  respond_to :json

  def index
    @users = User.all
    respond_with(@users)
  end
  
  def create
    @user = User.create(params[:user])
    respond_with(@user)
  end
  
  def show
    respond_with @user
  end
  
end
