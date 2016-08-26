class Flat < ApplicationRecord
  validates :name, presence: {message: 'you should add a name'}, uniqueness: true
  validates :city, presence: {message: 'you should add a city'}
  validates :slug, presence: true


  before_validation :set_slug


  def to_param
    #return "#{self.id}-#{self.name.parameterize}"
    self.slug
  end

  def set_slug
    self.slug = self.name.parameterize
  end


end
