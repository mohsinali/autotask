class Contact < ApplicationRecord
  #Associations
  enum contact_type: [:host, :others]
  belongs_to :organization 
  scope :host, -> {where(:contact_type => 'host')}
  scope :other, -> {where(:contact_type => 'others')}
 
end
