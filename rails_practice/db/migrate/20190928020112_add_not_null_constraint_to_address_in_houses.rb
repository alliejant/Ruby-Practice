class AddNotNullConstraintToAddressInHouses < ActiveRecord::Migration[6.0]
  def change
    change_column :houses, :address, :string, :null => false
  end
end
