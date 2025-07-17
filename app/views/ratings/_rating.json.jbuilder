json.extract! rating, :id, :product_id, :stars, :created_at, :updated_at
json.url rating_url(rating, format: :json)
