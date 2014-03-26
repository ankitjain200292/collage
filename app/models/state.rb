class State < ActiveRecord::Base
  has_many:cities, dependent: :destroy
  has_many:colleges
  validates :name, presence: true, uniqueness: true
end
