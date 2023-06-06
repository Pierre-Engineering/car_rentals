class RenameUserVehiclesTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :user_vehicles, :vehicles
  end
end
