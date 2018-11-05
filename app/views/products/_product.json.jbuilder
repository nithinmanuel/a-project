json.extract! product, :id, : name, :meta_title, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
