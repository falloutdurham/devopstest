json.array!(@users) do |user|
  json.extract! user, :id, :name, :description, :email
  json.url user_url(user, format: :json)
end
