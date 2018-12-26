class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :address
      t.string :street
      t.string :postal_code
      t.string :region
      t.string :country
      t.string :main_phone_contact
      t.string :fax
      t.string :website
      t.string :other_phone

      t.timestamps
    end
  end
end
