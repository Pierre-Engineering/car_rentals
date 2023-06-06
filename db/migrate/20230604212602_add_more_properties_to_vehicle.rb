class AddMorePropertiesToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :license_plate, :string
    add_column :vehicles, :transponder, :string
    add_column :vehicles, :has_lockbox, :string
    add_column :vehicles, :lockbox_code, :string
    add_column :vehicles, :lockbox_location, :string
  end
end
