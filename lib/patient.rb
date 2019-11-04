# patient class
class Patient
    attr_accessor :name, :doctor, :date

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
            appointment.patient == self
        end
    end

    def new_appointment(doctor, date)
        # binding.pry
        Appointment.new(date, self, doctor)
    end

    def doctors
        self.appointments.map do |appointment|
            appointment.doctor
        end
    end
end
# initialize name (accessor) @@all

# new_appointment instance method given doctor ,
# date creates a new appointment

#appointment returns all appointments associated with this Patient
#doctors  instance method has that iterates over that patient's Appointments and 
# collects the doctor that belongs to each Appointment