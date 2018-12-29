class CallTesting < ApplicationRecord
	belongs_to :external
	enum testing_with: [:skype , :pexip]
	enum testing_status: [:yes, :no]
	
end
