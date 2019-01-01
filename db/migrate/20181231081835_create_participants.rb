class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string :connect_type
      t.string :connect_address
      t.integer :participant_type
      t.integer :call_type
      t.string :org_site
      t.boolean :dial_in
      t.boolean :QM_dialout
      t.boolean :audio
      t.boolean :webRTC
      t.boolean :ISDN
      t.boolean :IP
      t.boolean :URL
      t.string :external_room
      t.references :organization, foreign_key: true
      t.references :external, foreign_key: true
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
