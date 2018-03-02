json.extract! request, :id, :name, :city, :sky, :postcode, :temp, :created_at, :updated_at
json.url request_url(request, format: :json)
