z=0

10.times do
	z+=1

	Message.seed do |s|
	  s.id = "#{z}"
	  s.user_id = "#{z}"
	  s.title = "テスト件名#{z}"
	  s.body = "テスト本文#{z}"
	end

end