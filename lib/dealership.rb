class Dealership
@@dealerships = [ ]

  define_method(:initialize) do |dealership_name|
    @dealership_name = dealership_name
    @cars = [ ]
    @id = @@dealerships.length() + 1
  end

  define_singleton_method(:clear) do
    @@dealerships = [ ]
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_method(:dealership_name) do
    @dealership_name
  end

  define_method(:cars) do
    @cars
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_method(:get_id) do
    @id
  end

  define_singleton_method(:find) do |id|
    dealer = nil
    @@dealerships.each() do |dealership|
      if dealership.get_id == id.to_i
        dealer = dealership
      end
    end
    dealer
  end

  define_method(:add_car) do |car|
    @cars.push(car)
  end


end
