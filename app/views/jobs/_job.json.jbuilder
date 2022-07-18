json.extract! job, :id, :job_title, :job_desc, :salary, :category, :created_at, :updated_at
json.url job_url(job, format: :json)
