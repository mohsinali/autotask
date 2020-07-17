class AddContactToMeetings < ActiveRecord::Migration[5.2]
  def change
     add_reference :meetings, :contact, index: true
    add_foreign_key :meetings, :contacts
  end
end
