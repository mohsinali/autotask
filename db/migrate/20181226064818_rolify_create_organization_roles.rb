class RolifyCreateOrganizationRoles < ActiveRecord::Migration[5.2]
  def change
    create_table(:organization_roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:organizations_organization_roles, :id => false) do |t|
      t.references :organization
      t.references :organization_role
    end
    
    add_index(:organization_roles, [ :name, :resource_type, :resource_id ])
    add_index(:organizations_organization_roles, [ :organization_id, :organization_role_id ])
  end
end
