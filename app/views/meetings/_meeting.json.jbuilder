json.extract! meeting, :id, :title, :date, :start_time, :end_time, :duration, :org_name, :booked_by, :operator, :agenda, :call_recording, :test_call, :cancel_call, :setup_call, :concierage, :organization_id, :user_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
