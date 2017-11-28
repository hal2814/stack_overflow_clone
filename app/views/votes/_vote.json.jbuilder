json.extract! vote, :id, :count, :user_id, :question_id, :response_id, :created_at, :updated_at
json.url vote_url(vote, format: :json)
