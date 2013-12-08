json.array!(@samples) do |sample|
  json.extract! sample, :name, :price, :started_at
  json.url sample_url(sample, format: :json)
end
