class ChangeTypeToBeIntegerInOrganizations < ActiveRecord::Migration[5.2]
  
  	def up
    change_column :organizations, :type, 'integer USING CAST(type AS integer)'
  end

  def down
    change_column :organizations, :type, 'integer USING CAST(type AS integer)'
  end
  end

