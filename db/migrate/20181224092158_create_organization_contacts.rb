class CreateOrganizationContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_contacts do |t|
      t.references :contact, foreign_key: true
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
