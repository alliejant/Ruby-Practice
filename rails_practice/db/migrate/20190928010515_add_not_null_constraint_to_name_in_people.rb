class AddNotNullConstraintToNameInPeople < ActiveRecord::Migration[6.0]
  def change
    change_column :people, :name, :string, :null => false
  end
end
