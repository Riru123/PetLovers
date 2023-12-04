class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    @pets = Pet.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.create(chatroom_params)
    redirect_to chatroom_path(@chatroom)
  end

  def chatroom_params
    params.require(:chatroom).permit(:name, :pet_id)
  end
end
