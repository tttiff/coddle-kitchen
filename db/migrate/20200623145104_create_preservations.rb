class CreatePreservations < ActiveRecord::Migration[5.2]
  def change
    create_table :preservations do |t|
      t.string :method, null: false
      t.text :description

      t.timestamps
    end
  end
end
