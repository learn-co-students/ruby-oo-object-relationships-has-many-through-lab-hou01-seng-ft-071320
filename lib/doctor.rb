class Doctor
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.find_all{|index| index.doctor == self}
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def patients
        Appointment.all.collect {|index| index.patient}
    end

end
