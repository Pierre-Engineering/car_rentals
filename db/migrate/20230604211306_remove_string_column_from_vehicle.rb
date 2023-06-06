class RemoveStringColumnFromVehicle < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehicles, :string
  end
end
