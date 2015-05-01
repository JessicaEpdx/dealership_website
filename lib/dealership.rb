class Dealership

@@dealerships = { }

  define_method(:initialize) do |dealership_name|
    @dealership_name = dealership_name
    @cars = []
    @id = @@dealerships.length() + 1
  end

  define_singleton_method(:clear) do
    @@dealerships = {}
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_method(:dealership_name) do
    @dealership_name
  end

  define_method(:save) do
    @@dealerships.store(self, @cars)
  end

  define_method(:add_car) do |car|
    @@dealerships.each() do |dealership|
      if self == dealership.dealership_name()
        @cars.push(car)
      end
    end
  end

  define_method(:get_id) do |name|
    @@dealerships.each() do |dealership|
    if dealership == name
      @id
    end
  end
end
end
