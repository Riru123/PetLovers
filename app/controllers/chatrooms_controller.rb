class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    # @pet = Pet.find(params[:id])
    @chatroom = Chatroom.create(chatroom_params)
    # @chatroom.pet = @pet
    redirect_to chatroom_path(@chatroom)
  end

  def chatroom_params
    params.require(:chatroom).permit(:name, :pet_id)
  end
end
