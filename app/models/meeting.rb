class Meeting < ApplicationRecord
  #Enum
  enum call_type: [:internal, :external]

  #Associations
  belongs_to :organization
  belongs_to :user
  has_many :participants , inverse_of: :meeting
  accepts_nested_attributes_for :participants, reject_if: :all_blank, allow_destroy: true
  
end
