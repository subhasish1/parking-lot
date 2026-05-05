class ParkingLot
    include Singleton

    require "zeitwerk"

    loader = Zeitwerk::Loader.new
    loader.push_dir("./") # Point this to your code directory
    loader.setup

    puts "**********"

    def initialize
        @tickets = {}
        @slots_by_type = Hash.new {|hash, key| hash[key] = []}
    end

    #setup-for-slots

    def add_spots(spot)
        puts "*******"
        puts spot
        @slots_by_type[spot.spot_type] << spot
    end

    #Entry-Process

    def generate_ticket(vehicle)
       required_type = resolve_spot_type(vehicle.type)
        

    end

    def print_
        @slots_by_type["Car"].map{|spot| spot.available }
    end

    private

    def resolve_spot_type(type)
        if type == "Car"
            CarParkingSpot.new
        end
    end

    def slot_available?(type)
        @spots_by_type[type].find(&:available?)
    end

    def generate_ticket_for(vehicle)
        
        ticket = Ticket.new(vehicle, )
    end
end