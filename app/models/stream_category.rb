class StreamCategory < ActiveRecord::Base
  belongs_to:category
  has_many:college_streams
end
