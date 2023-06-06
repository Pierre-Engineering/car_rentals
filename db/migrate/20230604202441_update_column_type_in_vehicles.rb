class UpdateColumnTypeInVehicles < ActiveRecord::Migration[7.0]
  def change
    change_column :vehicles, :vin, :string
  end
end
