class Organization < ApplicationRecord
	has_many :sites
	has_many :organization_contacts , dependent: :destroy
  	has_many :contacts,through: :organization_contacts , dependent: :destroy
	enum type: [:customer, :lead, :prospect]
	enum user_type: [:visscon_user, :external]
	accepts_nested_attributes_for :organization_contacts , :reject_if => :all_blank, :allow_destroy => true

end
