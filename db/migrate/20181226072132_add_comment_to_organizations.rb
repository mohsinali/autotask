class AddCommentToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :comment, :text
  end
end
