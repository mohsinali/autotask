class CreateMeetingExternals < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_externals do |t|
      t.references :meeting, foreign_key: true
      t.references :external, foreign_key: true

      t.timestamps
    end
  end
end
