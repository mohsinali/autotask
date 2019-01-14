class Organization < ApplicationRecord
  #enums
  paginates_per 5
  enum org_type: [:customer, :lead, :prospect]
  enum contact_method: [:webRTC , :audio]

  #Associations
  belongs_to :user

  has_one :call_testing , inverse_of: :organization
  accepts_nested_attributes_for :call_testing, reject_if: :all_blank, allow_destroy: true

  has_many :sites ,dependent: :destroy, inverse_of: :organization
  accepts_nested_attributes_for :sites, reject_if: :all_blank, allow_destroy: true
 
  has_many :contacts ,dependent: :destroy, inverse_of: :organization
  accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true

  has_many :meeting_organizations
  has_many :meetings, through: :meeting_organizations
  #Validations
  validates :name, :address, :street, :postal_code, :region, :country, :main_phone_contact, :fax, :website, presence: true, if: :can_validate

  #Scopes
  scope :internal, -> { where(user_type:[:visscon_user]) }

  def can_validate
    true
  end
end
