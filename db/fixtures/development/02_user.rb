z=1

29.times do
	   z+=1
  User.seed do |s|
    s.email = "user#{z}@example.com"
    s.name = "山田太郎#{z}"
    s.name_kana = "ヤマダタロウ#{z}"
    s.nickname = "山ちゃん#{z}"
    s.sex = "0"
    s.birth = "19920101"
    s.image = Rails.root.join("db/fixtures/image/user/#{z}.jpg").open
    s.password = "111111"
  end
end
