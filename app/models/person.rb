class Person < ApplicationRecord
  belongs_to :mother, class_name: 'Person', optional: true
  belongs_to :father, class_name: 'Person', optional: true
  validates :name, presence: true
  validates :birth_date, presence: true
end
