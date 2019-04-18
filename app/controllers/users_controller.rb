class UsersController < ApplicationController

# ユーザサイド

  def top
  end

  def about
  end

  def mypage
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
       flash[:notice] = "ERROR!!編集する権限がありません。"
       redirect_to mypage_path(current_user.id)
      end
  end

  def update
    @user = User.find(params[:id])
    if    @user.update(user_params)
          flash[:notice] = "User was successfully updated."
          redirect_to mypage_path(@user.id)
    else  render 'edit'
    end
  end


# 管理人サイド

  def index
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:name, :name_kana, :nickname, :sex, :birth, :image_id)
  end

end
