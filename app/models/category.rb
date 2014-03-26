class Category < ActiveRecord::Base
  has_many:stream_categories
  validates :name, presence: true, uniqueness: true
end
