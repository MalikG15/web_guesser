require 'sinatra'
require 'sinatra\reloader'

@secret_number = (1 + rand(99))

get '/' do 
  message = check_guess(@secret_number)
  erb :index, :locals => {:number => number, :message => message}
end

def number
  @number ||= rand(100)
end

def check_guess
  if params["guess"] >= @secret_number.to_s
    puts "Too High!"
  elsif params["guess"] <= @secret_number.to_s  	
  	puts "Too Low!"
  end
 erb :index
end
