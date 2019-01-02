class CallTesting < ApplicationRecord
	enum testing_with: [:skype , :pexip]
	enum testing_status: [:yes, :no]
	belongs_to :external	
end
