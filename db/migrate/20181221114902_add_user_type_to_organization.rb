class AddUserTypeToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :user_type, :string
  end
end
