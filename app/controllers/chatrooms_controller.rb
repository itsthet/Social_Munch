class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.user = current_user


    if @chatroom.save
      redirect_to @chatroom, notice: 'Chatroom was successfully created'
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def chatroom_params
    params.required(:chatroom).permit(:name)
  end


end
