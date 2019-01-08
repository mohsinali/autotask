class RemoveOrganizerFromMeetings < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :organizer, :integer
  end
end
