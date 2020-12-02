class Api::V1::SignuptokensController < ApplicationController

  def update
  end

  def show
  end

  def new
  end

  def index
    new_token = Signuptoken.new
    charset = Array('A'..'Z') + Array('a'..'z')
    new_token.token_text = Array.new(10) { charset.sample }.join
    new_token.save
    response = new_token.token_text
    render json: {new_code: response}
  end

  def create
  end

  def destroy
  end

end
