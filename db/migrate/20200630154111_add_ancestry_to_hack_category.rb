class AddAncestryToHackCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :hack_categories, :ancestry, :string
    add_index :hack_categories, :ancestry
  end
end
