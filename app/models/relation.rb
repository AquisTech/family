class Relation < ApplicationRecord
  has_many :relationships, dependent: :destroy

  validates :name, presence: true
  validates :inverse_name, presence: true

  def name_and_inverse_name
    [name, inverse_name].compact.join(' --> ')
  end
end
