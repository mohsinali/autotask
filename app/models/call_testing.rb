class CallTesting < ApplicationRecord
	#Enum
	enum testing_with: [:skype , :pexip]
	enum testing_status: [:yes, :no]

	#Associations
	belongs_to :external	
end
