class Relationship < ApplicationRecord
  belongs_to :relation
  belongs_to :person
  belongs_to :related_person, class_name: 'Person'

  def applicable_relation_name(person)
    person_id == person.id ? relation.inverse_name : relation.name
  end

  def relative_of(actor)
    person_id == actor.id ? related_person : person
  end
end
