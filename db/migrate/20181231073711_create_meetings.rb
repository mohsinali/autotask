class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :title
      t.date :date
      t.string :start_time
      t.string :end_time
      t.string :duration
      t.string :org_name
      t.string :booked_by
      t.string :operator
      t.text :agenda
      t.boolean :call_recording
      t.boolean :test_call
      t.boolean :cancel_call
      t.boolean :setup_call
      t.boolean :concierage
      t.references :organization, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
