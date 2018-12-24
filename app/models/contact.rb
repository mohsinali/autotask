class Contact < ApplicationRecord
	 has_many :organization_contacts
  	 has_many :organizations,through: :organization_contacts
end
