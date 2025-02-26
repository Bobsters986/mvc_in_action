class Comedian < ApplicationRecord
  has_many :specials

  validates_presence_of :name
  validates_presence_of :age

  def self.average_age
    average(:age)
  end

  def average_special_runtime
    specials.average(:runtime)
  end
end
