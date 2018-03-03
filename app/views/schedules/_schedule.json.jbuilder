json.extract! schedule, :id, :reservation_id, :schedule_type, :started_on, :finished_on, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
