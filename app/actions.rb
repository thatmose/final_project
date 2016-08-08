require 'las_reader'
# Homepage (Root path)
my_las = CWLSLas.new('./example24_check.las')
# # p my_las
# # p my_las.to_json
# test_curve = my_las.curve('GR')
# depth_curve = my_las.curve('DEPTH')
# another_curve = my_las.curve('SFL')
# yanother_curve = my_las.curve('ILM')

# p my_las.country

get '/' do
  erb :index
end
