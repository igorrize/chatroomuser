json.extract! room, :id, :rname, :user_id, :created_at, :updated_at
json.url room_url(room, format: :json)
