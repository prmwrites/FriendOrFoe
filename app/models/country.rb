class Country < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates_uniqueness_of :name
end
