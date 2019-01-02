class User < ApplicationRecord
  rolify

  #Associations
  has_many :comments
  has_many :meetings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
