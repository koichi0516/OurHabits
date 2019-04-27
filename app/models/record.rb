class Record < ApplicationRecord
	belongs_to :user_habit

	validates :date, presence: true
    validates :challenge_time, presence: true

end
