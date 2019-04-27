class MessagesController < ApplicationController
# ユーザーサイド

  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(message_params)
    @message.user_id = current_user.id
  	@message.save
  	flash[:notice] = "メッセージを送信しました。"
  	redirect_to mypage_path(current_user.id)
  end

# 管理人サイド

  def index
    @messages = Message.page(params[:page])
  end

  def show
    @message = Message.find(params[:id])
  end

  	private
		def message_params
			params.require(:message).permit(:title, :body)
		end
end