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
#
#   describe('.all') do
#     it("shows all dealerships") do
#       dealership1=Dealership.new("Bobs Place")
#       dealership1.save()
#       dealership2=Dealership.new("Jess Joint")
#       dealership2.save()
#       all_dealerships = Dealership.all()
#       expect(all_dealerships.get_id("Bobs Place")).to(eq(1))
#     end
#   end
end
