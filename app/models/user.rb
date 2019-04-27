class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_habits, dependent: :destroy
  has_many :habits, through: :user_habits
  has_many :chats, dependent: :destroy
  has_many :messages, dependent: :destroy
  attachment :image

	validates :name, presence: true
  validates :name_kana, presence: true
	validates :nickname, presence: true
  validates :sex, presence: true
  validates :birth, presence: true, length: { is: 8}

end
