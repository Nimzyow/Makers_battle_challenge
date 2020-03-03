require "sinatra"

class Battle < Sinatra::Base
  get "/" do
    "This is my first test of sinatra using rspec. pretty neat!"
  end

  run! if app_file == $0
end