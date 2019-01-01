class AddTestingWithMethodToCallTesting < ActiveRecord::Migration[5.2]
  def change
    add_column :call_testings, :testing_with_method, :boolean
  end
end
