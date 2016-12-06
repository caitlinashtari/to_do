require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/task")
require("pg")

DB = PG.connect({:dbname => "to_do"})

get('/') do
  erb(:index)
end

get('/lists/new') do
  erb(:list_form)
end

post('/lists/new') do
  name = params.fetch("name")
  list = List.new({:name => name, :id =>nil})
  list.save()
  erb(:success)
end
