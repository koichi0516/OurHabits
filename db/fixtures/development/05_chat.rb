z=0

10.times do
	z+=1

	Chat.seed do |s|
	  s.id = "#{z}"
	  s.user_id = "#{z}"
  	  s.habit_id = 7
	  s.text = "チャットテスト#{z}"
	end

end