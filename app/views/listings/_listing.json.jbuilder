json.extract! listing, :id, :title, :description, :condition, :price, :sold, :user, :categories_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
json.description listing.description.to_s
