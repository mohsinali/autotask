class ChangeUserTypeToBeIntegerInOrganizations < ActiveRecord::Migration[5.2]
  def self.up
    change_column :organizations, :user_type, 'integer USING CAST(user_type AS integer)'
  end

  def self.down
    change_column :organizations, :user_type, 'integer USING CAST(user_type AS integer)'
  end
end
