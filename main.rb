require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pg'

require_relative 'controllers/urls_controller'

require_relative 'models/url'

get '/' do
  erb :home
end