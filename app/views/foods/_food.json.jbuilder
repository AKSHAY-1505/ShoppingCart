json.extract! food, :id, :name, :description, :price, :category, :created_at, :updated_at
json.url food_url(food, format: :json)
