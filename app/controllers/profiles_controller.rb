class ProfilesController < ApplicationController

  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = User.where(id: params[:id])[0]
  end

  def update
    # Just do a .find if that's what you wanna do, triggering an error is a good thing!
    @user = User.where(id: params[:id])[0]

    # Since you're using a static string value, you could define strong params and
    # then reject anything that matches no_change (IF YOU WANT).
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
