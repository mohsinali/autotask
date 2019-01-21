class AddColumnsInMeetingExternals < ActiveRecord::Migration[5.2]
  def change
  	add_column :meeting_externals, :connect_type, :integer
  	add_column :meeting_externals, :connect_address, :string
  	add_column :meeting_externals, :room, :string
  	add_column :meeting_externals, :dial_in, :boolean
  	add_column :meeting_externals, :QM_dial_out, :boolean
   	add_column :meeting_externals, :audio, :boolean
  	add_column :meeting_externals, :webRTC, :boolean
  	add_column :meeting_externals, :ISDN, :boolean
  	add_column :meeting_externals, :IP, :boolean
    add_column :meeting_externals, :URL, :boolean
 
  end
end
