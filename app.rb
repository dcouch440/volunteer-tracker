require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
require './lib/project'
require './lib/volunteer'
also_reload 'lib/**/*.rb'

DB = PG.connect({:dbname => 'volunteer_tracker'})

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

get ('/projects/:id/volunteers/new') do
  @project = Project.find(params[:id])
  erb :volunteer_new
end

post ('/projects/:id/volunteers') do
  volunteer = Volunteer.new({:name => params[:name] , :id => nil, :project_id => params[:id]})
  volunteer.save()
  redirect to "/projects/#{params[:id]}/volunteers/#{volunteer.id}"
end

get ('/projects/:id/volunteers/:vid') do
  @volunteer = Volunteer.find(params[:vid])
  erb :volunteer_show
end

patch ('/projects/:id/volunteers/:vid') do
  @volunteer = Volunteer.find(params[:vid])
  @volunteer.update({:name => params[:name]})
  redirect to "/projects/#{params[:id]}/volunteers/#{@volunteer.id}"
end

post ('/projects/:id/volunteers/:vid') do
  @volunteer = Volunteer.find(params[:vid])
  @volunteer.update(params)
end