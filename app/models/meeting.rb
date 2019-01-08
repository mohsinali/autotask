class Meeting < ApplicationRecord
  #Enum
  enum call_type: [:internal, :external]

  #Associations
  has_many :meeting_organizations
  has_many :organizations, through: :meeting_organizations
  

 
  belongs_to :user , optional: true
  has_many :participants , inverse_of: :meeting
  accepts_nested_attributes_for :participants, reject_if: :all_blank, allow_destroy: true
  
end
