class Ticket
    attr_accessor :exit_time, :status, :amount_paid
    attr_reader :ticket_id, :entry_time, :vehicle, :slot 

    def initialize(vehicle, slot, entry_time, exit_time = nil)
        @vehicle = vehicle
        @slot = slot
        @entry_time = entry_time
        @exit_time = exit_time
        @status = :active
        @amount_paid = 0
        @ticket_id = SecureRandom.uuid
    end

end