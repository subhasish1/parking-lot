class ParkingSpot
    attr_accessor :spot_id, :spot_type, :available

    AVAILABLE_STATUS = :available
    OCCUPIED_STATUS = :occupy

    def initialize(spot_id, spot_type)
        @spot_id = spot_id
        @spot_type = spot_type
        @available = true
    end

    def turn_to_occupied
        @available = false
    end

    def turn_to_available
        @available = true
    end

end
