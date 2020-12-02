class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:new, :edit]
  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = User.where(id: params[:id])[0]
    @logged_in_user = current_user

  end

  def update
    @logged_in_user = current_user
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

  def new
  end

end
