class Vehicle < ApplicationRecord
  belongs_to :user

  validates :make, :model, :color, :vin, presence: true
  validates :is_electric, inclusion: [true, false]
  validates :is_gas, inclusion: [true, false]
  validate :validate_gas_vehicle

  enum gas_type: { regular: 0,  midgrade: 1,  premium: 2,  diesel: 3  }
  enum transmission: { automatic: 0,  manual: 1  }

  def validate_gas_vehicle
    if is_gas? && (gas_type.blank? || transmission.blank?)
      errors.add(:base, "Fuel type and transmission are required for gas vehicles")
    end
  end
end
