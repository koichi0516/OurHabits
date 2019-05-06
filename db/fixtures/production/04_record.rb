z=0

10.times do
	z+=1

	Record.seed do |s|
	  s.id = "#{z}"
	  s.user_habit_id = "#{z}"
	  s.challenge = 1
	  s.challenge_time = "#{z}00"
	  s.date = "2019-04-18"
	end

end