class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #validates :name, presence: {message: "a user needs to have a name"}

  has_many :flats, dependent: :destroy #dependency. If a user is deleted, flats are destroyed as well.
  has_many :wishes, dependent: :destroy

end
