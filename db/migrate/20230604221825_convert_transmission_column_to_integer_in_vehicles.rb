class ConvertTransmissionColumnToIntegerInVehicles < ActiveRecord::Migration[7.0]
  def up
    reversible do |dir|
      change_table :Vehicle do |t|
        dir.down do
          # Convert integers back to original values if needed
          Vehi.find_each do |record|
            record.update(transmission: record.transmission.to_s)
          end
        end
        end
      end
  end

  def down 
    reversible do |dir|
      change_table :Vehicle do |t|
        dir.up do
          # Convert existing values to integers
          Vehi.find_each do |record|
            record.update(transmission: record.transmission.to_i)
          end
        end
  end
end
