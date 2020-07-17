class AddingColumnsInMeetings < ActiveRecord::Migration[5.2]
  def change
  	add_column :meetings, :call_type, :integer
  	add_column :meetings, :room, :string
  end
end
