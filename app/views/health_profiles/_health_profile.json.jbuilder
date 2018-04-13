json.extract! health_profile, :id, :birthday, :weight, :gender, :illness, :user_id, :created_at, :updated_at
json.url health_profile_url(health_profile, format: :json)
