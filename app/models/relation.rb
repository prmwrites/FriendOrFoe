class Relation < ActiveRecord::Base
  validates_uniqueness_of :name
  belongs_to :country
end
