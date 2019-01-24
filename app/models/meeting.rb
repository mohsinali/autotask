class Meeting < ApplicationRecord
  paginates_per 5
  #Enum
  enum call_type: [:internal, :external]

  #Associations
  has_many :meeting_organizations
  has_many :organizations, through: :meeting_organizations
  
  has_many :meeting_externals 
  has_many :externals, through: :meeting_externals

  belongs_to :user , optional: true
  
  # has_many :meeting_organizations , inverse_of: :meeting
  accepts_nested_attributes_for :meeting_organizations, reject_if: :all_blank, allow_destroy: true
  
  #has_many :meeting_externals , inverse_of: :meeting
  accepts_nested_attributes_for :meeting_externals, reject_if: :all_blank, allow_destroy: true
  
end
