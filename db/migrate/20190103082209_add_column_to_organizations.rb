class AddColumnToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :contact_method, :integer
  end
end
