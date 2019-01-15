class RemoveOrganizationFromCallTestings < ActiveRecord::Migration[5.2]
     def change
       remove_reference :call_testings, :organization, foreign_key: true
     end
end
