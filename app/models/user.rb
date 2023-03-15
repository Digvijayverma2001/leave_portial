class User < ApplicationRecord
   has_many :leaves
   has_many :user_leaves
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {"1": "admin" }
end
