class Chat < ApplicationRecord
	default_scope -> { order(created_at: :desc) }
	belongs_to :user
	belongs_to :habit

	validates :text, presence: true

end
