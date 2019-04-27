class UserHabit < ApplicationRecord
	belongs_to :user
	belongs_to :habit
	has_many :records, dependent: :destroy

end
