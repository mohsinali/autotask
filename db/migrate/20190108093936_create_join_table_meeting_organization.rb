class CreateJoinTableMeetingOrganization < ActiveRecord::Migration[5.2]
  def change
    create_join_table :meetings, :organizations do |t|
      t.index [:meeting_id, :organization_id]
      # t.index [:organization_id, :meeting_id]
    end
  end
end
