class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
   
    @user = User.find(params[:id])
    @prototypes = @user.prototypes.includes(:user)
    
  end

end