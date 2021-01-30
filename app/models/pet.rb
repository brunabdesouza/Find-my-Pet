class Pet < ApplicationRecord

  belongs_to :user, optional: true

  belongs_to :shelter, optional: true 

  enum animal_type: [:dog, :cat]

end
