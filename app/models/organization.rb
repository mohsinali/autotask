class Organization < ApplicationRecord
  #enums
  enum org_type: [:customer, :lead, :prospect]
  enum user_type: [:visscon_user]
  enum contact_method: [:webRTC , :audio]

  #Associations
  has_many :meetings
  belongs_to :user

  has_one :call_testing , inverse_of: :organization
  accepts_nested_attributes_for :call_testing, reject_if: :all_blank, allow_destroy: true

  has_many :sites , inverse_of: :organization
  accepts_nested_attributes_for :sites, reject_if: :all_blank, allow_destroy: true

  has_many :contacts , inverse_of: :organization
  accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true

  #Validations
  validates :name, :address, :street, :postal_code, :region, :country, :main_phone_contact, :fax, :website, presence: true, if: :can_validate

  #Scopes
  scope :internal, -> { where(user_type:[:visscon_user]) }

  def can_validate
    true
  end
end
