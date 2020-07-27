class Doctor

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
        Appointment.all.select {|appointment| appointment.doctor == self }
    end

    def new_appointment(patient, name)
        Appointment.new(name, patient, self) 
    end

    def patients
        appointments.map {|i| i.patient}
    end

end