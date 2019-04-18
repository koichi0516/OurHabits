Habit.seed do |s|
  s.id = 1
  s.name = 'RUNNNING'
  s.sub_title = 'ランニング'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/1-1.jpg").open
  s.member_number = 356
  s.master_number = 213
end

Habit.seed do |s|
  s.id = 2
  s.name = 'READING'
  s.sub_title = '読書'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/2-1.jpg").open
  s.member_number = 963
  s.master_number = 289
end

Habit.seed do |s|
  s.id = 3
  s.name = 'WAKE UP'
  s.sub_title = '早起き'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/3-1.jpg").open
  s.member_number = 143
  s.master_number = 38
end

Habit.seed do |s|
  s.id = 4
  s.name = 'MUSIC'
  s.sub_title = '楽器演奏'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/4-1.jpg").open
  s.member_number = 985
  s.master_number = 254
end

Habit.seed do |s|
  s.id = 5
  s.name = 'DRAWING'
  s.sub_title = 'イラスト描画'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/5-1.jpg").open
  s.member_number = 546
  s.master_number = 234
end

Habit.seed do |s|
  s.id = 6
  s.name = 'STUDY'
  s.sub_title = '勉強'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/6-1.jpg").open
  s.member_number = 879
  s.master_number = 423
end

Habit.seed do |s|
  s.id = 7
  s.name = 'PROGRAMMING'
  s.sub_title = 'プログラミング'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/7-1.jpg").open
  s.member_number = 528
  s.master_number = 104
end

Habit.seed do |s|
  s.id = 8
  s.name = 'MUSCLE TRAINING'
  s.sub_title = '筋トレ'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/8-1.jpg").open
  s.member_number = 370
  s.master_number = 112
end

Habit.seed do |s|
  s.id = 9
  s.name = 'DIET'
  s.sub_title = 'ダイエット'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/9-1.jpg").open
  s.member_number = 482
  s.master_number = 125
end

Habit.seed do |s|
  s.id = 10
  s.name = 'D.I.Y'
  s.sub_title = '日曜大工'
  s.back_image = Rails.root.join("db/fixtures/image/habit_show/10-1.jpg").open
  s.member_number = 569
  s.master_number = 324
end