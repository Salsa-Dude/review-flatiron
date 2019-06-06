require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hello Started my server using Shotgun!!!"
  end

end
