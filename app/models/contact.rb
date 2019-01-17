class Contact < ApplicationRecord
  #Associations
  enum contact_type: [:host, :others]
  belongs_to :organization 

end
