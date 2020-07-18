class Listing
    attr_accessor :city
    @@all = []

    def initialize (city)

        @city = city
        @@all << self
    end

    def self.all
        @@all 
    end

    def guests
        array = []
        Trip.all.each do |t_instance| 
            if t_instance.listing == self
                array << t_instance.guest
            end
        end
        array
    end

    def trips
        Trip.all.select {
            |t_instance| t_instance.listing == self
        }
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city_name)
        self.all.select { 
            |l_instance| l_instance.city == city_name
        }
    end

    def self.most_popular
        trip_num = 0
        most_popular = nil

        self.all.each do |l_instance| 
            if l_instance.trip_count > trip_num
                trip_num = l_instance.trip_count
                most_popular = l_instance
            end
        end
        most_popular
    end
        
end