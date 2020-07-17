class MeetingOrganization < ApplicationRecord
	enum connect_type: [:IP, :ISDN , :URL , :Skype , :Other]
	belongs_to :meeting
	belongs_to :organization
	accepts_nested_attributes_for :organization, :reject_if => :all_blank
end
