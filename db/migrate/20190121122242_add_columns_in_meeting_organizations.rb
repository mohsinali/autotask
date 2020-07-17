class AddColumnsInMeetingOrganizations < ActiveRecord::Migration[5.2]
  def change
  	add_column :meeting_organizations, :connect_type, :integer
  	add_column :meeting_organizations, :connect_address, :string
  	add_column :meeting_organizations, :room, :string
  	add_column :meeting_organizations, :dial_in, :boolean
  	add_column :meeting_organizations, :QM_dial_out, :boolean
   	add_column :meeting_organizations, :audio, :boolean
  	add_column :meeting_organizations, :webRTC, :boolean
  	add_column :meeting_organizations, :ISDN, :boolean
  	add_column :meeting_organizations, :IP, :boolean
    add_column :meeting_organizations, :URL, :boolean
 
  end
end
