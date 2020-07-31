class ContractorsController < ApplicationController

  def create
    @contractor = Contractor.new(contractor_params)
    if @contractor.save
      redirect_to action: "index", notice: 'Contractor added successfully'
    else
      @errors = @contractor.errors.full_messages
      render action: 'index'
    end

  end

  def index
    @user = current_user
    @contractors = Contractor.all
  end

  def contractor_params
    params.require(:contractor).permit(:name)
  end
end
