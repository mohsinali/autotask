class RemoveRoomFromCallTesting < ActiveRecord::Migration[5.2]
  def change
    remove_column :call_testings, :room, :string
  end
end
