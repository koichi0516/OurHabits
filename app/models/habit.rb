class Habit < ApplicationRecord
    attachment :image
    attachment :back_image
    attachment :image_a
    attachment :image_b
    has_many :user_habits, dependent: :destroy
    has_many :users, through: :user_habits
    has_many :chats, dependent: :destroy

    validates :name, presence: true
    validates :sub_title, presence: true
    validates :back_image, presence: true
    validates :subheading_a, presence: true
    validates :instruction_a, presence: true
    validates :image_a, presence: true
    validates :subheading_b, presence: true
    validates :instruction_b, presence: true
    validates :image_b, presence: true

end
