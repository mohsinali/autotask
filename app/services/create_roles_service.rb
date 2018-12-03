class CreateRolesService
  def call
    Role.delete_all
    ActiveRecord::Base.connection.execute("ALTER SEQUENCE roles_id_seq RESTART WITH 1")

    ['admin', 'company_admin', 'company_user'].each do |role_name|
      Role.create! name: role_name
    end
    puts "Roles created successfully."
  end
end