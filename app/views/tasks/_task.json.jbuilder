json.extract! task, :id, :title, :description, :begin_time, :deadline_time, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
