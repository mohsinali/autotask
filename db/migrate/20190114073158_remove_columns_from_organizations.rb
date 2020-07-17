class RemoveColumnsFromOrganizations < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :questmark_reference, :string
    remove_column :organizations, :user_type, :integer
  end
end
