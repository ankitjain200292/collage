json.array!(@college_streams) do |college_stream|
  json.extract! college_stream, :id, :college_id, :category_id, :stream_category_id
  json.url college_stream_url(college_stream, format: :json)
end
