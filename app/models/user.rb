class User < ApplicationRecord
  rolify

  #Associations
  has_many :comments
  has_many :meetings
  has_many :organizations
  has_many :externals

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
end
