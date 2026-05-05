class Payment
    attr_accessor :amount, :paymennt_at, :payment_mode, :ticket, :status

    def initialize(amount, payment_mode, ticket)
        @amount = amount
        @payment_mode = payment_mode
        @ticket = ticket
        @paymennt_at = Time.now
    end
end