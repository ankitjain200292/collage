class City < ActiveRecord::Base
  belongs_to:state 
  has_many:colleges
  validates :name, presence: true, uniqueness: true
end
