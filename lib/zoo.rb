class Zoo
  attr_reader :cages, :employees
    def initialize(name, open_date, closing_date)
        @name = name
        @open_date = open_date
        @closing_date = closing_date
        @employees = []
        @cages = []
        10.times do 
          @cages.push(Cage.new)
        end
    end
    def add_employee(employee)
      @employees.push(employee)
    end
    def open?(date)
      if date > @open_date && date < @closing_date
        true
      else
        false
      end
    end

end