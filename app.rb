[
  'sinatra',
  'sinatra/reloader',
  'pg',
  'pry',
  './lib/project',
  './lib/volunteer',
  './db'

].each { |data| (require data) }

also_reload 'lib/**/*.rb'


get ('/') do
  erb :projects_new
end

get ('/projects') do
  @projects = Projects.all()
end

post ('/projects') do
  project = Project.new({:id => nil, :title => params[:title]})
  project.save()
  redirect to "/projects/#{project.id}"
end

get ('/projects/:id') do
  @project = Project.find(params[:id])
  erb :project
end