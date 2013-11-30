json.array!(@jobs) do |job|
  json.extract! job, :title, :shift, :description
  json.url job_url(job, format: :json)
end
