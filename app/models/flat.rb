class Flat < ApplicationRecord
  validates :name, presence: {message: 'you should add a name'}
end
