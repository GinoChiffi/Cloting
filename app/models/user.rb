class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :zoekertjes
  enum sex: [:male, :female]

  def self.sexes_for_select
    sexes.keys.map{ |x| [x.humanize, x] }
  end
end
