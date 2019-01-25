class MeetingExternal < ApplicationRecord
  enum connect_type: [:IP, :ISDN , :URL , :Skype , :Other]
  belongs_to :meeting
  belongs_to :external
  accepts_nested_attributes_for :external, :reject_if => :all_blank
end
