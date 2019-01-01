json.extract! call_testing, :id, :contact_name, :contact_email, :contact_phone, :ip_address, :url, :isdn, :skype_detail, :other, :testing_status, :testing_with, :testing_method, :date, :comments, :room, :organization_id, :created_at, :updated_at
json.url call_testing_url(call_testing, format: :json)
