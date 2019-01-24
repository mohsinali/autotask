class CreateMeetingOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_organizations do |t|
      t.integer :meeting_id
      t.integer :organization_id

      t.timestamps
    end
     add_index :meeting_organizations, [:meeting_id, :organization_id]
  end
end
