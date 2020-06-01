json.extract! student, :id, :std_name, :std_class, :address1, :address2, :created_at, :updated_at
json.url student_url(student, format: :json)
