class AddExternalToCallTestings < ActiveRecord::Migration[5.2]
  def change
     add_reference :call_testings, :external , index: true, foreign_key: true
  end
end
