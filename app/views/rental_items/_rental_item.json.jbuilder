json.extract! rental_item, :id, :Item, :Type, :Category, :Description, :Rental_Rate, :created_at, :updated_at
json.url rental_item_url(rental_item, format: :json)