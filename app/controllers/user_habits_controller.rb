class UserHabitsController < ApplicationController

  def index
    @user_habit = current_user.user_habits.all
  end

  def create
    @user_habit = UserHabit.new(user_habit_params)
    @user_habit.save
    flash[:notice] = "新しい習慣が追加されました。"
    redirect_to user_habit_path(@user_habit.id)
  end

  def show
    @user_habit = UserHabit.find(params[:id])
    @habit = Habit.find(@user_habit.habit.id)
# グラフ表示
    record = @user_habit.records.map{|r| [r.date.to_s,r.challenge_time]}
    @record = record.sort_by(&:first)
# カレンダー表示
    @calendar_records = @user_habit.records
    gon.user_habit_id = @user_habit.id
  end

  def destroy
    @user_habit = UserHabit.find(params[:id])
    @user_habit.destroy
    flash[:notice] = "習慣が削除されました。"
    redirect_to user_habits_path
  end

  def edit

  end

  def update
  end

  private
  def user_habit_params
    params.require(:user_habit).permit(:habit_id, :user_id, :start_at, :limit_at, :count)
  end
end
