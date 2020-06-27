json.extract! recipe, :id, :title, :instructions, :source_url, :image, :youtube_url, :publish, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
