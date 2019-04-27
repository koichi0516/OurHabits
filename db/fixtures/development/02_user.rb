z=0

30.times do
	   z+=1
  User.seed do |s|
    s.email = "user#{z}@example.com"
    s.name = "テストユーザ#{z}"
    s.name_kana = "テストユーザ#{z}"
    s.nickname = "テストン#{z}"
    s.sex = 0
    s.birth = 19920101
    s.image = Rails.root.join("db/fixtures/image/user/#{z}.jpg").open
    s.password = "111111"
  end
end

Admin.seed do |s|
  s.email = "admin@example.com"
  s.password ="123456"
end