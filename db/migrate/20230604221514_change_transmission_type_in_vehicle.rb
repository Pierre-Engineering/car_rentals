class ChangeTransmissionTypeInVehicle < ActiveRecord::Migration[7.0]
  def change
    change_column :vehicles, :transmission, :integer
  end
end
