class MeetingExternal < ApplicationRecord
  enum connect_type: [:IP, :ISDN , :URL , :Skype , :Other]
  belongs_to :meeting
  belongs_to :external
end
