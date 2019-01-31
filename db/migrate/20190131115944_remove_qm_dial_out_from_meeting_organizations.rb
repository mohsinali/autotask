class RemoveQmDialOutFromMeetingOrganizations < ActiveRecord::Migration[5.2]
  def change
  	 remove_column :meeting_organizations, :QM_dial_out, :boolean
  	 remove_column :meeting_externals, :QM_dial_out, :boolean
  end
end
