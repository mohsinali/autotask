class AddOrganizerToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :organizer, :integer
  end
end
