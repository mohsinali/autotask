class Organization < ApplicationRecord
  rolify :role_cname => 'OrganizationRole'
	validates :name, :address, :street, :postal_code, :region, :country, :main_phone_contact, :fax, :website, presence: true, length: { maximum: 10 }, if: :can_validate
    belongs_to :customer
    belongs_to :external
    belongs_to :call_testing
	has_many :sites , inverse_of: :organization
    accepts_nested_attributes_for :sites, reject_if: :all_blank, allow_destroy: true
	
  	has_many :contacts , inverse_of: :organization
    accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true
	enum type: [:customer, :lead, :prospect]
	enum user_type: [:visscon_user, :external]
	after_create :assign_default_role

  def assign_default_role
    self.add_role(:customer) if self.roles.blank?
  end
	
  def can_validate
    true
  end
end
