require("sinatra")
require("sinatra/reloader")
require("./lib/car")
require("./lib/dealership")
also_reload("lib/**/*.rb")

get('/') do
  erb(:index)
end

get('/cars') do
  @all_cars = Car.all()
  erb(:cars)
end

post('/cars') do
  car=Car.new(params.fetch("make"), params.fetch("model"), params.fetch("year").to_i)
  car.save()
  @all_cars = Car.all()
  erb(:success)
end

get('/cars/new') do
  erb(:car_form)
end

get('/cars/:id') do
  @car = Car.find(params.fetch('id'))
  erb(:car)
end

get('/dealership/new') do
  erb(:dealership_form)
end

post('/dealerships') do
  dealer = Dealer.new(params.fetch('dealership_name'))
  dealer.save()
  @dealers = Dealership.all()
  erb(:dealerships)
end

get('/dealerships') do
  erb(:dealerships)
end
