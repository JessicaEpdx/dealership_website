require('rspec')
require('car')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#dealership_name') do
    it("gets name of dealership") do
      dealership1=Dealership.new("Bobs Place")
      dealership1.save()
      expect(dealership1.dealership_name()).to(eq("Bobs Place"))
    end
  end

  describe('#id') do
    it("returns id") do
      dealership1=Dealership.new("Bobs Place")
      dealership1.save()
      dealership2=Dealership.new("Jess Joint")
      dealership2.save()
      expect(dealership1.id()).to(eq(1))
      expect(dealership2.id()).to(eq(2))
    end
  end

  describe('#save') do
    it("saves dealership") do
      dealership1=Dealership.new("Bobs Place")
      dealership1.save()
      expect(Dealership.all()).to(eq([dealership1]))
    end
  end

  describe('.all') do
    it("shows all dealerships") do
      dealership1=Dealership.new("Bobs Place")
      dealership1.save()
      dealership2=Dealership.new("Jess Joint")
      dealership2.save()
      expect(Dealership.all()).to(eq([dealership1, dealership2]))
    end
  end
end
