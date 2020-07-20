class Patient
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.find_all {|index| index.patient == self}
    end

    def doctors
        Appointment.all.collect {|index| index.doctor}
    end


end