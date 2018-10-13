json.extract! user, :id, :name, :group, :cell, :created_at, :updated_at
json.url user_url(user, format: :json)
