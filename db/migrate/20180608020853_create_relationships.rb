class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.belongs_to :relationship_type
      t.belongs_to :person
      t.belongs_to :related_person

      t.timestamps
    end
  end
end
