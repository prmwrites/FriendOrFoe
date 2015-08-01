class Country < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :opinion_of_usa, presence: true
  validates_uniqueness_of :name
end
