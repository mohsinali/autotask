class Organization < ApplicationRecord
	has_many :sites , dependent: :destroy
	
  	has_many :contacts , inverse_of: :organization
    accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true
	enum type: [:customer, :lead, :prospect]
	enum user_type: [:visscon_user, :external]
	
end
