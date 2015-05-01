class Car
@@cars = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
    @id = @@cars.length().+(1)
  end

  define_singleton_method(:clear) do
    @@cars = []
  end

  define_singleton_method(:all) do
    @@cars
  end

  define_singleton_method(:find) do |id|
    found_car = nil
    @@cars.each() do |car|
      if car.get_id() == id.to_i
        found_car = car
      end
    end
    found_car
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:get_id) do
    @id
  end

  define_method(:save) do
    @@cars.push(self)
  end

  define_method(:age) do
    this_year = Time.now().year()
    age = this_year - @year
  end

end
