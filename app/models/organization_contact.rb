class OrganizationContact < ApplicationRecord
  belongs_to :contact
  belongs_to :organization

  accepts_nested_attributes_for :contact,:reject_if => :all_blank,allow_destroy: true

  before_save :update_contacts

  validates :first_name,:phone, :presence => true

  def update_contacts
    contact_id = contact.where(first_name: contact_name).exists? ? contact.find_by_name(first_name).id : contact.create(first_name: first_name).id
  end
end

end
