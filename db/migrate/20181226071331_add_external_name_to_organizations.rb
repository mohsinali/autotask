class AddExternalNameToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :external_name, :string
  end
end
