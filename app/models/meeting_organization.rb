class MeetingOrganization < ApplicationRecord
	belongs_to :meeting
	belongs_to :organization
end
