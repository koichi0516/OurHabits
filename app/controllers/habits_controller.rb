class HabitsController < ApplicationController

  def index
    @habits = Habit.all
    if current_user.user_habits.count == 3
       flash[:notice] = "習慣は３つまでしか登録できません。"
       redirect_to user_habits_path
    end
  end

  def show
    @habit = Habit.find(params[:id])
    @user_habit = UserHabit.new
  end

  def create
  end

  def destroy
  end

  def rank
  end

  def edit
  end

  def update
  end

  private
  def user_params
    params.require(:habit).permit(:name, :instruction, :image, :member_number, :master_number)
    params.require(:user_habit).permit(:habit_id, :user_id, :start_at, :limit_at, :count)
  end

end
