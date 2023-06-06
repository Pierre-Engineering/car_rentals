class AddVehicleStatusData < ActiveRecord::Migration[7.0]
  def change
    add_column :user_vehicles, :active_on_turo, :boolean 
    add_column :user_vehicles, :active_on_getaround, :boolean 
    add_column :user_vehicles, :takes_private_rentals, :boolean 
    add_column :user_vehicles, :list_date_turo, :datetime 
    add_column :user_vehicles, :list_date_getaround, :datetime
  end
end
