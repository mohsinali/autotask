class Participant < ApplicationRecord
	#enums
	enum participant_type: [:internal, :external]
	#Associations
	
	belongs_to :meeting

	#Validations
	validates_presence_of :meeting
end
