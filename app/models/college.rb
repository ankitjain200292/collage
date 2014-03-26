class College < ActiveRecord::Base
  belongs_to:city
  belongs_to:state
  validates :name, presence: true, uniqueness: true
  validates :information, presence: true
  validates :year, presence: true
  validates :address1, presence: true
  validates :address2, presence: true
  validates :state_id, presence: true
  validates :city_id, presence: true
  validates :pincode, presence: true
  validates :collage_type, presence: true
  validates :college_website, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :college_email, presence:   true,
    format:     { with: VALID_EMAIL_REGEX }
# validates :phone, presence: true, length: { maximum: 10 }
# validates :information, presence: true, length: { maximum: 500 }
end
