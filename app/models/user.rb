class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
         
  validates :nickname, uniqueness: true, presence: true, length: { maximum: 20 }

  has_many :posts
         
end
