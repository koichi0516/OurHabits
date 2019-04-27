class RecordsController < ApplicationController

  def new
  	@record = Record.new
    @user_habit = UserHabit.find(params[:user_habit_id])
    if @user_habit.user_id != current_user.id
       flash[:notice] = "アクセスする権限がありません。"
       redirect_to user_habits_path
    end
  end

  def create
	  @record = Record.new(record_params)
    @record.user_habit_id = params[:user_habit_id]
      if Record.where(user_habit_id: params[:user_habit_id]).where(date: @record.date).exists?
         flash[:notice] = "その日はすでに入力済です。"
         render :new
      else
	       @record.save
         flash[:notice] = "記録しました。"
         redirect_to user_habit_path(@record.user_habit.id)
      end
  end

  def index
    @records = Record.where(user_habit_id: params[:user_habit_id]).page(params[:page])
    @user_habit = UserHabit.find(params[:user_habit_id])
    if @user_habit.user_id != current_user.id
       flash[:notice] = "アクセスする権限がありません。"
       redirect_to user_habits_path
    end
  end

  def edit
    @record = Record.find(params[:id])
    if @record.user_habit.user_id != current_user.id
       flash[:notice] = "アクセスする権限がありません。"
       redirect_to user_habits_path
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
# ランキング表示
    @challenge_ranks = Record.where(challenge:1).joins(:user_habit).where(user_habits: {habit_id: params[:id]}).group(:user_habit).order('count_all desc').count
    @challenge_time_ranks = Record.joins(:user_habit).group(:user_habit).where(user_habits: {habit_id: params[:id]}).order('sum_challenge_time desc').sum(:challenge_time)
# ユーザの順位表示（日数）
    @my_rank = 0
    @challenge_ranks.each do |record|
      @my_rank += 1
      if record[0].user_id == current_user.id
        break
      end
    end
# ユーザの順位表示（時間）
    @my_time_rank = 0
    @challenge_time_ranks.each do |r|
      @my_time_rank += 1
      if r[0].user_id == current_user.id
        break
      end
    end
# 全体の順位表示（日数）
    @ranks = [] # 順位表示のための配列を用意
    rank = 0
    counter = 1  # 同じ記録の人が何人いるか（同率順位処理）
    pre_user_record = nil # 前者との記録比較のため（同率順位処理）

    @challenge_ranks.each.with_index do |a, i|
      if pre_user_record.nil? # １位の処理
        rank = 1
      elsif pre_user_record == a.last # 同率順位の場合
        counter += 1
      else pre_user_record != a.last # 同率順位でない場合
        rank += counter
        counter = 1
      end

      @ranks << rank
      pre_user_record = a.last

    end
# 全体の順位表示（時間）
    @time_ranks = []
    time_rank = 0
    time_counter = 1
    time_pre_user_record = nil

    @challenge_time_ranks.each.with_index do |b, i|
      if time_pre_user_record.nil?
        time_rank = 1
      elsif time_pre_user_record == b.last
        time_counter += 1
      else time_pre_user_record != b.last
        time_rank += time_counter
        time_counter = 1
      end

      @time_ranks << time_rank
      time_pre_user_record = b.last

    end

# ユーザの記録表示
  @my_rank_date = @challenge_ranks[@challenge_ranks.keys.select{|a| a.user_id == current_user.id}[0]]
  @my_rank_time = @challenge_time_ranks[@challenge_time_ranks.keys.select{|a| a.user_id == current_user.id}[0]]

  end

  private

  def record_params
    params.require(:record).permit(:user_habit_id, :challenge, :challenge_time, :date)
  end

end