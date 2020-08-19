class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  validates :name, presence: true
  has_many :tweets
  has_many :comments
  has_one :message
  has_many :blogs
end
