require('rspec')
require('car')

describe(Car) do
  before() do
    Car.clear()
  end

  describe("#make") do
    it("returns the make of the vehicle") do
      car=Car.new("Toyota", "Prius", "2004")
      expect(car.make()).to(eq("Toyota"))
    end
  end

  describe("#model") do
    it("returns the model of the vehicle") do
      car=Car.new("Toyota", "Prius", "2004")
      expect(car.model()).to(eq("Prius"))
    end
  end

  describe("#year") do
    it("returns the year of the vehicle") do
      car=Car.new("Toyota", "Prius", 2004)
      expect(car.year()).to(eq(2004))
    end
  end

  describe("#get_id") do
    it("returns the id of the vehicle") do
      car=Car.new("Toyota", "Prius", 2004)
      car.save()
      car2=Car.new("Toyota", "Camry", 2005)
      car.save()
      car3=Car.new("Hyundai", "Elantra", 2014)
      car.save()
      expect(car2.get_id()).to(eq(2))
    end
  end

  describe("#save") do
    it("adds a car to list of cars") do
      car=Car.new("Toyota", "Prius", 2004)
      car.save()
      expect(Car.all()).to(eq([car]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved vehicles") do
      expect(Car.clear()).to(eq([]))
    end
  end

  describe("#age") do
    it("returns the vehicles age") do
      car=Car.new("Subaru", "Outback", 2005)
      expect(car.age()).to(eq(10))
    end
  end

  describe(".find") do
    it("returns a car by its id") do
      car=Car.new("Subaru", "Forester", 2008)
      car.save()
      car2=Car.new("Toyota", "Whatever", 2008)
      car2.save()
      car3=Car.new("BLahBlah", "Wheelsblah", 2008)
      car3.save()
      expect(Car.find(car2.get_id())).to(eq(car2))
    end
  end


end
