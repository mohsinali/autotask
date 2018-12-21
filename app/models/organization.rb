class Organization < ApplicationRecord
	has_many :sites
	has_many :contacts
	enum type: [:customer, :lead, :prospect]
	enum user_type: [:visscon_user, :external]
end
