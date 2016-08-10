require 'net/http'
require 'rubygems'
require 'las_reader'
require 'json'
require_relative 'well'

# Homepage (Root path)
get '/' do
  erb :index
end

get '/display' do
  @url = params[:url]
  uri = URI(@url)
  @filename = (/[^\/]*$/.match(@url))
  File.open("#{@filename}", "w") {|f| f.write(Net::HTTP.get(uri)) }
  @worklas = CWLSLas.new("#{@filename}")
  @current_well = Well.new(@worklas)
  #Write to json file
  File.open("#{@filename}.json", "w") {|f| f.write(@current_well.welldata.to_json) }
  puts @current_well.welldata.to_json
  erb :'/display'
   
end
