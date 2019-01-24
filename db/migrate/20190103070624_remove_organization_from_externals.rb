class RemoveOrganizationFromExternals < ActiveRecord::Migration[5.2]
  def change
    remove_reference :externals, :organization, foreign_key: true
  end
end
