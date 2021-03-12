require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
also_reload('lib/**/*.rb')

get '/' do
  'welcome'
end