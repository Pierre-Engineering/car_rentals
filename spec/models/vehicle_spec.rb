require "spec_helper"

RSpec.describe Vehicle, type: :model do
  describe 'validations' do
    it 'requires a gas type and transmission property for gas vehicles' do 
      vehicle = Vehicle.create(make: 'Honda', model: 'Civic', year: 2016, is_electric: false, is_gas: true, color: 'gray', vin: '1234567')

      expect(vehicle).not_to be_valid
      expect(vehicle.errors[:base]).to include('Fuel type and transmission are required for gas vehicles')
    end

  end
end
