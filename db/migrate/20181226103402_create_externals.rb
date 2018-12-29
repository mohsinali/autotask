class CreateExternals < ActiveRecord::Migration[5.2]
  def change
    create_table :externals do |t|
      t.string :name
      t.string :questmark_reference
      t.string :room
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
