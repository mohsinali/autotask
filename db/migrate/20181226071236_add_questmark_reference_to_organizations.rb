class AddQuestmarkReferenceToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :questmark_reference, :string
  end
end
