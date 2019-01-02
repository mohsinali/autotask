class Participant < ApplicationRecord
	#Associations
	belongs_to :organization
	belongs_to :external
	belongs_to :meeting

	#Validations
	validates_presence_of :meeting
end
