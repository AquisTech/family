class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :nickname
      t.string :maiden_name
      t.datetime :birth_date
      t.datetime :death_date
      t.string :gender
      t.belongs_to :mother
      t.belongs_to :father

      t.timestamps
    end
  end
end
