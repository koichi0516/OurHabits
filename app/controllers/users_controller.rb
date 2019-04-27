class UsersController < ApplicationController

# ユーザサイド

  def top
  end

  def about
    @habits = Habit.all
  end

  def mypage
    @user = User.find(params[:id])
    if @user.id != current_user.id
       flash[:notice] = "アクセスする権限がありません。"
       redirect_to mypage_path(current_user.id)
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
       flash[:notice] = "アクセスする権限がありません。"
       redirect_to mypage_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice] = "更新されました。"
    redirect_to mypage_path(@user.id)
  end

# 管理人サイド

  def index
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
      if user_signed_in?
      @user.destroy
      flash[:notice] = "退会しました。"
      redirect_to top_path
      else
      @user.destroy
      flash[:notice] = "ユーザを強制退会させました。"
      redirect_to users_path
      end
  end

  private
  def user_params
    params.require(:user).permit(:name, :name_kana, :nickname, :sex, :birth, :image)
  end

end
