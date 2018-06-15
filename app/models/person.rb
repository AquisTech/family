class Person < ApplicationRecord
  has_many :relationships
  has_many :spouces, -> { joins('INNER JOIN relations ON relations.id = relationships.relation_id').where(relations: { name: 'spouce' }) },
    through: :relationships, class_name: 'Person', source: 'related_person'
  has_many :children, -> { joins('INNER JOIN relations ON relations.id = relationships.relation_id').where(relations: { name: 'child' }) },
    through: :relationships, class_name: 'Person', source: 'related_person'

  validates :name, presence: true
  validates :birth_date, presence: true

  def children_with(spouce)
    children & spouce.children # TODO: Use query instead of '&'
  end
end
