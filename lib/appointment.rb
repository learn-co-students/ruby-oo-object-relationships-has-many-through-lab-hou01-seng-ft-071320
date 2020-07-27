class Appointment

    attr_accessor :name, :patient, :doctor

    @@all = []

    def initialize(name, patient, doctor)
        @name = name 
        @patient = patient 
        @doctor = doctor 
        @@all << self
    end

    def self.all
        @@all  
    end

end