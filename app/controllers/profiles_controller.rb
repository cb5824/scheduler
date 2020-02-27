class ProfilesController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.where(id: params[:id])[0]
  end

  def update
    @user = User.where(id: params[:id])[0]
    if params[:updates][:new_role] != 'no_change'
      @user.role = params[:updates][:new_role]
    end
    if params[:updates][:new_approval_group] != 'no_change'
      @user.approval_group = params[:updates][:new_approval_group]
    end
    @user.save!
    render :show
  end

  def edit

  end
end
