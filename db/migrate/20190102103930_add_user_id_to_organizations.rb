class AddUserIdToOrganizations < ActiveRecord::Migration[5.2]
  def change
     add_reference :organizations, :users , index: true, foreign_key: true
  end
end
