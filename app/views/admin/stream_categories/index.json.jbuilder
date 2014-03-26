json.array!(@stream_categories) do |stream_category|
  json.extract! stream_category, :id, :name
  json.url stream_category_url(stream_category, format: :json)
end
