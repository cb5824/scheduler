class RegistrationsController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.where(id: params[:id])[0]
  end

  def update
    @user = User.where(id: params[:id])[0]
    @user.role = params[:updates][:new_role]
    @user.save!
    render :show
  end
end
