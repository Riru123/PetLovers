class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:missing].present? && params[:missing] == true
      @pets = Pet.missing_pet
    elsif params[:missing].present? && params[:missing] == false
      @pets = Pet.found_pet
    else
      @pets = Pet.all
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:photo)
  end

end
