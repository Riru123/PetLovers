class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:category] == "I lost"
      @pets = Pet.lost_pet.order(created_at: :desc)
    elsif params[:category] == "I found"
      @pets = Pet.found_pet.order(created_at: :desc)
    else
      @pets = Pet.all.order(created_at: :desc)
    end

    @pets_lost = Pet.where(category: "I lost").order(created_at: :desc)
    @pets_found = Pet.where(category: "I found").order(created_at: :desc)

    respond_to do |format|
      format.html
      format.text { render partial: "pets/cards-index", locals: { category: "I lost" }, formats: [:html] }
    end
  end

  def show
    @pet = Pet.find(params[:id])
    @chatroom = Chatroom.new
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

  def edit
    @disable_nav = true
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to root_path, status: :see_other
  end

  def mark_as_found
    @pet = Pet.find(params[:id])
    @pet.update(missing: false)
    redirect_to pet_path(@pet)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :photo, :species, :breed, :colors, :details, :street, :city, :country, :zip_code, :category)
  end
end
