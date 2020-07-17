class RemoveColumnsFromMeetings < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :date, :date
    remove_column :meetings, :duration, :string
  end
end
