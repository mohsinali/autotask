class External < ApplicationRecord
	validates :name, :questmark_reference, :room, :organization_id, presence: true, if: :can_validate
    belongs_to :organization
    has_one :call_testing , inverse_of: :external
    accepts_nested_attributes_for :call_testing, reject_if: :all_blank, allow_destroy: true
  	has_many :comments, as: :commentable
  	def can_validate
  		true
  	end
end 