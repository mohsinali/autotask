class OrganizationRole < ApplicationRecord
	#Associations
	has_and_belongs_to_many :organizations, :join_table => :organizations_organization_roles
	belongs_to :resource,
           :polymorphic => true,
           :optional => true

    #Validations
	validates :resource_type,
          :inclusion => { :in => Rolify.resource_types },
          :allow_nil => false

scopify
end
