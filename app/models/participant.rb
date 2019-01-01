class Participant < ApplicationRecord
  belongs_to :organization
  belongs_to :external
  belongs_to :meeting
  validates_presence_of :meeting
end
