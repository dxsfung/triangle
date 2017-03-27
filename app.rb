require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
    erb(:index)
end

get('/display') do
    @side_a=params.fetch('side_a').to_i
    @side_b=params.fetch('side_b').to_i
    @side_c=params.fetch('side_c').to_i
    @result=Triangle.new(@side_a, @side_b, @side_c).triangle_type()
    erb(:index)
end
