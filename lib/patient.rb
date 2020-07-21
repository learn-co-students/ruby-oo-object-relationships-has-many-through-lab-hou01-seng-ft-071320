class Patient
        attr_accessor :name
        @@all =[]
        def initialize(name)
            @name=name
            @@all<<self
        end
        def self.all
            @@all
        end
    
        def new_appointment(doctor,date)
            Appointment.new(date,self,doctor)
        end
    
        def appointments
            Appointment.all.find_all{|value|
            value.patient==self}
        end

        def doctors
            arr=Appointment.all.find_all{|value|
            value.patient==self}
            arr.map{|ele|
            ele.doctor}
        end
    end
    