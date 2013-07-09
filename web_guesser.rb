require 'sinatra'
require 'sinatra\reloader'

secret_number = (1 + rand(99)).to_s

get "/" do
 erb :index
end