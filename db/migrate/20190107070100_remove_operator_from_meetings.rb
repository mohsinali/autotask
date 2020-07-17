class RemoveOperatorFromMeetings < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :operator, :string
  end
end
