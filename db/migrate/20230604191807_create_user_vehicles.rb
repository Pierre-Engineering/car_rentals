class CreateUserVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_vehicles do |t|
      t.string :make
      t.string :model
      t.boolean :is_electric
      t.boolean :is_gas
      t.integer :gas_type
      t.string :transmission
      t.string :color
      t.string :string
      t.integer :year
      t.integer :vin

      t.timestamps
    end
  end
end
