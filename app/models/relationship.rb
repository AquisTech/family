class Relationship < ApplicationRecord
  belongs_to :relation
  belongs_to :person
  belongs_to :related_person, class_name: 'Person'
end
