class AddQuestmarkStatusToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :questmark_status, :boolean
  end
end
