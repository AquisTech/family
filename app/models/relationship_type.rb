class RelationshipType < ApplicationRecord
  validates :name, presence: true
  validates :inverse_name, presence: true
end
