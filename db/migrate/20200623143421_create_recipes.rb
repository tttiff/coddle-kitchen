class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :instructions
      t.string :source_url
      t.string :image
      t.string :youtube_url
      t.boolean :publish, default: false, null: false

      t.timestamps
    end
  end
end
