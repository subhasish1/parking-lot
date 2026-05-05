class CarParkingSpot < ParkingSpot
    attr_reader :spot_type
    
    def initialize(spot_id)
        super(spot_id, 'Car')
    end
end