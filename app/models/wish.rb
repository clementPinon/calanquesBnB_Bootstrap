class Wish < ApplicationRecord

  validates :user, presence: true
  validates :flat, presence: true


  belongs_to :user
  belongs_to :flat

end
