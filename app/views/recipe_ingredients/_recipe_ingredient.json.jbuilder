json.extract! recipe_ingredient, :id, :vital, :substitute_possible, :recipe_id, :ingredient_id, :measurement_id, :created_at, :updated_at
json.url recipe_ingredient_url(recipe_ingredient, format: :json)
