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

# 管理人サイド

  def admin_index
    @habits = Habit.all
  end

  def admin_show
    @habit = Habit.find(params[:id])
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    @habit.save
    flash[:notice] = "新しい習慣が登録されました。"
    redirect_to admin_habits_path
  end

  def edit
    @habit = Habit.find(params[:id])
  end

  def update
    @habit = Habit.find(params[:id])
    @habit.update(habit_params)
    flash[:notice] = "更新されました。"
    redirect_to admin_habit_path(@habit)
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy
    flash[:notice] = "習慣を削除しました。"
    redirect_to admin_habits_path
  end

  private
  def habit_params
    params.require(:habit).permit(:name, :sub_title, :back_image, :subheading_a, :instruction_a, :image_a, :subheading_b, :instruction_b,:image_b, :message)
  end

end
