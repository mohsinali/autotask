class External < ApplicationRecord
	#Associations
    has_one :call_testing ,dependent: :destroy,inverse_of: :external
    accepts_nested_attributes_for :call_testing, reject_if: :all_blank, allow_destroy: true
  	has_many :comments, as: :commentable
    belongs_to :user
    has_many :meeting_externals
    has_many :meetings, through: :meeting_externals
  	#Validations
  	validates :name, :questmark_reference, :room, presence: true, if: :can_validate

  	def can_validate
  		true
  	end
  	
end 
