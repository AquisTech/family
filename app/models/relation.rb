class Relation < ApplicationRecord
  has_many :relationships, dependent: :destroy

  validates :name, presence: true
end
