class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact_phone
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
