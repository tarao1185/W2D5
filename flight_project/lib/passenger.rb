class Passenger
    attr_reader :name
    
    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(flight)
       @flight_numbers.each do |ele|
        if ele == flight.upcase
            return true
        end
       end

       false
    end

    def add_flight(flight)
        @flight_numbers << flight.upcase unless self.has_flight?(flight)
    end


end