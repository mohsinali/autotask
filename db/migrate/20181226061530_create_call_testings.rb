class CreateCallTestings < ActiveRecord::Migration[5.2]
  def change
    create_table :call_testings do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :ip_address
      t.string :url
      t.string :isdn
      t.string :skype_detail
      t.string :other
      t.integer :testing_status
      t.integer :testing_with
      t.boolean :testing_method
      t.string :date
      t.string :room
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
