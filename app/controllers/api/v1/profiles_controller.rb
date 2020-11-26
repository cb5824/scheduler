class Api::V1::ProfilesController < ApplicationController

  def update
  end

  def show
    target_user = User.where(id: params[:id])[0]
    if target_user.active == true
      target_user.active = false
      target_user.save

    else
      target_user.active = true
      target_user.save
    end
    response = true
    render json: response

  end
end
