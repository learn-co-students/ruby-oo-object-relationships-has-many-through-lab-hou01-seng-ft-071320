class Patient 

    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self }
    end

    def new_appointment(doctor, name)
        Appointment.new(name, self, doctor) 
    end

    def doctors
        appointments.map {|i| i.doctor }
    end

end