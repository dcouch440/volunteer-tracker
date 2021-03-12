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
  @projects = Project.all()
  erb :projects
end

post ('/projects') do
  project = Project.new({:id => nil, :title => params[:title]})
  project.save()
  redirect to "/"
end

get ('/projects/:id') do
  @project = Project.find(params[:id])
  @volunteers = @project.volunteers
  erb :project_show
end

get ('/projects/:id/edit') do
  @project = Project.find(params[:id])
  erb :project_edit
end

patch ('/projects/:id') do
  @project = Project.find(params[:id])
  @project.update(params)
  redirect to "/projects/#{@project.id}"
end

delete ('/project/:id') do
  @project = Project.find(params[:id])
  @project.delete()
  redirect to '/'
end

get ('/projects/:id/volunteers/:vid') do
  @volunteer = Volunteer.find(params[:vid])
  erb :volunteer_show
end

post ('/projects/:id/volunteers/:vid') do
  @volunteer = Volunteer.find(params[:vid])
  @volunteer.update(params)
end