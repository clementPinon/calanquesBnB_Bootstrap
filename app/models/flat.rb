class Flat < ApplicationRecord
  validates :name, presence: {message: 'you should add a name'}, uniqueness: {message: 'this appartment is already uploaded'}
  validates :city, presence: {message: 'you should add a city'}
  validates :user, presence: {message: 'a flat should have an owner'}
  validates :slug, presence: true

  belongs_to :user

  before_validation :set_slug


  def to_param
    #return "#{self.id}-#{self.name.parameterize}"
    self.slug
  end

  def set_slug
    self.slug = self.name.parameterize
  end


end
