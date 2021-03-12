require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')

get '/' do
  'welcome'
end