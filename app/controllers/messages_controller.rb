class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
    redirect_to root_path
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    message.update(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:first_name, :family_name, :first_name_kana, :family_name_kana, :introduction, :hobby, :skill, :likes).merge(user_id: current_user.id)
  end

end
