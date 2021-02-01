class Shelter < ApplicationRecord

  belongs_to :user

  has_many :pets

  geocoded_by :address
  after_validation :geocode 

end
