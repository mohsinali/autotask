class Meeting < ApplicationRecord
  paginates_per 5
  #Enum
  enum call_type: [:internal, :external]

  #Associations
  has_many :meeting_organizations 
  has_many :organizations, through: :meeting_organizations , inverse_of: :meeting
  accepts_nested_attributes_for :organizations
  accepts_nested_attributes_for :meeting_organizations
  
  has_many :meeting_externals 
  has_many :externals, through: :meeting_externals
  accepts_nested_attributes_for :externals
  accepts_nested_attributes_for :meeting_externals

  belongs_to :user , optional: true
  
  
  
end
