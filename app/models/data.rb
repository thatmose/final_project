require 'net/http'
require 'rubygems'
require_relative '../../../cwls-las-reader-master/lib/las_reader'


url = "http://aogweb.state.ak.us/DigLog/CookInlet/50883200870000.LAS"

uri = URI(url)
@filename = (/[^\/]*$/.match(url))
File.open("#{@filename}", "w") {|f| f.write(Net::HTTP.get(uri)) }
@worklas = CWLSLas.new("#{@filename}")
@curves = @worklas.curve_names
