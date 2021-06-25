json.extract! post, :id, :subject, :body, :date, :person_id, :created_at, :updated_at
json.url post_url(post, format: :json)
