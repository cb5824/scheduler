class RegistrationsController < ApplicationController
  # Similar notes to the stuff I added to the profiles_controller,

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

    # It's almost always better to either define this view or redirect to :show.
    # I HAVE HAD A LOT OF BAD TIMES WITH DIRECT RENDER CALLS.

    # I tend to use a direct render when I have something weird to return, otherwise
    # IMO it's best to use an established route.

    # Another option would be to like split the show into a partial and then flash a full_message
    # saying "result updated!" That's a pretty good pattern.
    render :show
  end
end
