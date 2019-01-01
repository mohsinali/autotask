class ChangeTypeToOrgType < ActiveRecord::Migration[5.2]
  def change
  	  rename_column :organizations, :type, :org_type
  end
end
