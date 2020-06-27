class CreateHackCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :hack_categories do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
