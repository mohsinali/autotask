class AddColumnsInSites < ActiveRecord::Migration[5.2]
  def change
  	add_column :sites, :contact, :string
  	add_column :sites, :address, :string

  end
end
