class Cash < Payment

    def initialize(amount, ticket)
        super(amount, 'Cash', ticket)
    end


    def pay(amount)
        puts "Cash Payment don for Rs- #{amount} "
        true
    end

end