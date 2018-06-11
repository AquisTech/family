class Person < ApplicationRecord
  belongs_to :mother, class_name: 'Person', optional: true
  belongs_to :father, class_name: 'Person', optional: true
  has_many :relationships
  validates :name, presence: true
  validates :birth_date, presence: true

  def children
    Person.find_by_sql("select * from people where mother_id = #{self.id} OR father_id = #{self.id}")
  end
end
