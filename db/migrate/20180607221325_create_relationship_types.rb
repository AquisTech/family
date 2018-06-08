class CreateRelationshipTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :relationship_types do |t|
      t.string :name
      t.string :inverse_name

      t.timestamps
    end
  end
end
