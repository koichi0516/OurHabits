class RecordsController < ApplicationController

  def new
  	@record = Record.new
  end

  def create
	  @record = Record.new(record_params)
    @record.user_habit_id = params[:user_habit_id]
	  @record.save
    flash[:notice] = "記録しました。"
    redirect_to user_habit_path(@record.user_habit.id)
  end

  def index
    @records = Record.where(user_habit_id: params[:user_habit_id])
    @user_habit = params[:user_habit_id]
  end

  def edit
    @record = Record.find(params[:id])
    if @record.user_habit.user_id != current_user.id
       flash[:notice] = "編集する権限がありません。"
       redirect_to user_habit_path(@record.user_habit.id)
    end
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    flash[:notice] = "活動記録を編集しました。"
    redirect_to user_habit_path(@record.user_habit.id)
  end

  def destroy
    @record = Record.find(params[:id])
    id = @record.user_habit.id
    @record.destroy
    flash[:notice] = "活動記録を削除しました。"
    redirect_to user_habit_path(id)
  end

  def rank
    @habit = Habit.find(params[:id])
    user = User.all

    @challenge_ranks = Record.where(challenge:1).joins(:user_habit).where(user_habits: {habit_id: params[:id]}).group(:user_habit).order('count_all desc').count
    @challenge_time_ranks = Record.joins(:user_habit).group(:user_habit).where(user_habits: {habit_id: params[:id]}).order('sum_challenge_time desc').sum(:challenge_time)
  end

  private

  def record_params
    params.require(:record).permit(:user_habit_id, :challenge, :challenge_time, :date)
  end

end