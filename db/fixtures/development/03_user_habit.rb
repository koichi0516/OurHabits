z=0

30.times do
	z+=1

	UserHabit.seed do |s|
	  s.id = "#{z}"
	  s.habit_id = 7
	  s.user_id = "#{z}"
	end

end