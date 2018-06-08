class RelationshipType < ApplicationRecord
  has_many :relationships, dependent: :destroy

  validates :name, presence: true
  validates :inverse_name, presence: true

  def name_and_backward_name
    [name, backward_name].compact.join(' --> ')
  end
end
