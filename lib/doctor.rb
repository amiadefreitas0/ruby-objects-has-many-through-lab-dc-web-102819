#Class Doctor
class Doctor
    #initialize name (accessor) @@all
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
        Appointment.all.select do |appointment|
            appointment.doctor
        end
    end

    def new_appointment(patient, date)
        # binding.pry
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.map do |appointment|
          appointment.patient
        end
    end
    # instance of the Patient class and a date, 
    #instance method new appointment
    # and creates a new Appointment0
    
end



#instance method appointments, 
# that iterates through all Appointments and 
# finds those belonging to this doctor

#patients, that iterates over that doctor's 
# Appointments and collects the patient 
# that belongs to each Appointment