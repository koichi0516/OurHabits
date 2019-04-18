class Habit < ApplicationRecord
    attachment :image
    attachment :back_image
    attachment :image_a
    attachment :image_b
    has_many :user_habits
    has_many :chats
end
