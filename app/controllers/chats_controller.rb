class ChatsController < ApplicationController

  def index
    @chats = Chat.where(habit_id: params[:habit_id]).page(params[:page])
    @chat_new = Chat.new
    @habit = Habit.find(params[:habit_id])
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.save
    flash[:notice] = "投稿しました。"
    redirect_to habit_chats_path(@chat.habit_id)
  end

  def edit
    @chat = Chat.find(params[:id])
    if @chat.user_id != current_user.id
       flash[:notice] = "アクセスする権限がありません。"
       redirect_to habit_chats_path(@chat.habit_id)
    end
  end

  def update
    chat = Chat.find(params[:id])
    chat.update(chat_params)
    flash[:notice] = "投稿を編集しました。"
    redirect_to habit_chats_path(chat.habit_id)
  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    flash[:notice] = "投稿を削除しました。"
    redirect_to habit_chats_path(@chat.habit_id)
  end

# 管理人サイド

  def admin_index
    @habits = Habit.all
  end

  private

  def chat_params
    params.require(:chat).permit(:user_id, :habit_id, :text)
  end

end
