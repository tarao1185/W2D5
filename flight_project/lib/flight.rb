require_relative "passenger"

class Flight

    def initialize(flight_number,capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        if @passengers.length == @capacity
            return true
        end

        if @passengers.length < @capacity
            return false
        end
    end

    def board_passenger(passenger)
        
        if passenger.has_flight? && !self.full?
        passengers << passenger
        end
 
    end

    def list_passengers
       
    end

    def [](idx)
        @passengers[idx]
    end

    def <<(passenger)
        board_passenger(passenger)
    end




end