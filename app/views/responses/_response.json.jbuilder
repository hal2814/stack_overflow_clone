json.extract! response, :id, :response, :best, :user_id, :question_id, :created_at, :updated_at
json.url response_url(response, format: :json)
