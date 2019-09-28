class ChangeHouseIdToForeignKeyInPeople < ActiveRecord::Migration[6.0]
  def change
	  add_foreign_key :people, :houses
	  add_index :people, :house_id
  end
end
