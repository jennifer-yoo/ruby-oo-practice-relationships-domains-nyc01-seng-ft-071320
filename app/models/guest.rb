class Guest
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def listings
        array = []
        Trip.all.each do |t_instance| 
            if t_instance.guest == self
                array << t_instance.listing
            end
        end
        array
    end

    def trips
        Trip.all.select {
            |g_instance| g_instance.guest == self 
        }
    end

    def trip_count  
        self.trips.count
    end

    def self.pro_traveller
        trip_num = 1
        pro = []

        self.all.each do |g_instance|
            if g_instance.trip_count > trip_num
                rip_num = g_instance.trip_count
                pro << g_instance
            end
        end
        pro
    end

    def self.find_all_by_name(guest_name)
        self.all.select {
            |g_instance| g_instance.name == guest_name
        }
    end

end