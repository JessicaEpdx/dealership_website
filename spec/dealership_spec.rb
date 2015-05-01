require('rspec')
require('car')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
    Car.clear()
  end

  describe('#dealership_name') do
    it("gets name of dealership") do
      dealership1 = Dealership.new("Bobs Place")
      dealership1.save()
      expect(dealership1.dealership_name()).to(eq("Bobs Place"))
    end
  end

  describe('#get_id') do
    it("returns id") do
      dealership1 = Dealership.new("Bobs Place")
      dealership1.save()
      dealership2 = Dealership.new("Jess Joint")
      dealership2.save()
      expect(dealership1.get_id()).to(eq(1))
      expect(dealership2.get_id()).to(eq(2))
    end
  end

  describe('#save') do
    it("saves dealership") do
      dealership1 = Dealership.new("Bobs Place")
      dealership1.save()
      expect(Dealership.all()).to(eq([dealership1]))
    end
  end

  describe('.all') do
    it("shows all dealerships") do
      dealership1 = Dealership.new("Bobs Place")
      dealership1.save()
      dealership2 = Dealership.new("Jess Joint")
      dealership2.save()
      expect(Dealership.all()).to(eq([dealership1, dealership2]))
    end
  end

  describe('.clear') do
    it("is empty at first") do
      expect(Dealership.clear()).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a dealership by id number") do
      dealership1 = Dealership.new("Bobs Place")
      dealership1.save()
      dealership2 = Dealership.new("Jess Joint")
      dealership2.save()
      expect(Dealership.find(1)).to(eq(dealership1))
    end
  end

  describe('#add_car') do
    it("adds a car to a dealership") do
      car1 = Car.new("Toyota", "Corolla", 2015)
      car1.save()
      dealership = Dealership.new("Jess Joint")
      dealership.save()
      dealership.add_car(car1)
      expect(dealership.cars()).to(eq([car1]))
      car2 = Car.new("Toyota", "Corolla", 2015)
      car2.save()
      dealership.add_car(car2)
      expect(dealership.cars()).to(eq([car1, car2]))
    end
  end

end
