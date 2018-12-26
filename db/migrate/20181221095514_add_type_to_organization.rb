class AddTypeToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :type, :string
  end
end
