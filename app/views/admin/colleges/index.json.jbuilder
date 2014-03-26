json.array!(@colleges) do |college|
  json.extract! college, :id, :name, :information, :year, :address1, :address2, :pincode, :landline, :mobile, :collage_type, :tution_fee, :college_website, :college_email, :facebook_link, :twitter_link, :linkedin_link
  json.url college_url(college, format: :json)
end
