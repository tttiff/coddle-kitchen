class CreateHacks < ActiveRecord::Migration[5.2]
  def change
    create_table :hacks do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :youtube_url
      t.boolean :publish

      t.timestamps
    end
  end
end
