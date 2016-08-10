require 'pry'

get '/' do
file = File.read('50883200870000.LAS.json')
@well_data = JSON.parse(file)
binding.pry
end
puts "Hello World"