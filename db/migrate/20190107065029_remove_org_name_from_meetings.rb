class RemoveOrgNameFromMeetings < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :org_name, :string
  end
end
