class AddRoomToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :room, :string
  end
end
