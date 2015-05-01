require("sinatra")
require("sinatra/reloader")
require("./lib/car")
require("./lib/dealership")
also_reload("lib/**/*.rb")

get('/') do
  erb(:index)
end

get('/car_front') do
  erb(:car_front)
end

# get('/cars') do
#   @all_cars = Car.all()
#   erb(:cars)
# end

# post('/cars') do
#   car=Car.new(params.fetch("make"), params.fetch("model"), params.fetch("year").to_i)
#   car.save()
#   @all_cars = Car.all()
#   @dealership = Dealership.find(params.fetch('dealership_id').to_i())
#   @dealership.add_car(@vehicle)
#   erb(:success)
# end

get('/cars/new') do
  erb(:car_form)
end

get('/car/:id') do
  @car = Car.find(params.fetch('id'))
  erb(:car)
end

get('/dealership/new') do
  erb(:dealership_form)
end

post('/dealerships') do
  dealer = Dealership.new(params.fetch('dealership_name'))
  dealer.save()
  @dealerships = Dealership.all()
  erb(:dealerships)
end

get('/dealerships') do
  @dealerships = Dealership.all()
  erb(:dealerships)
end

get('/dealership/:id') do
  @dealership = Dealership.find(params.fetch('id'))
  erb(:dealership)
end

get('/dealership/:id/cars/new') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:dealership_car_form)
end

post('/cars') do
  @car = Car.new(params.fetch("make"), params.fetch("model"), params.fetch("year").to_i)
  @car.save()
  @dealership = Dealership.find(params.fetch('dealership_id').to_i())
  @dealership.add_car(@car)
binding.pry
  @all_cars = @dealership.all()
  erb(:success)
end

get('/cars') do
  @all_cars = Car.all()
  erb(:cars)
end
