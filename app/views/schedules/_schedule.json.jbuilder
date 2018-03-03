json.extract! schedule, :id, :reservation_id, :schedule_type, :started_at, :finished_at, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
