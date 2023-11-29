class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:category] == "I lost"
      @pets = Pet.lost_pet
    elsif params[:category] == "I found"
      @pets = Pet.found_pet
    else
      @pets = Pet.all
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @disable_nav = true
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  
  def pet_params
    params.require(:pet).permit(:name, :photo, :species, :breed, :colors, :details, :street, :city, :country, :zip_code)
  end
end
