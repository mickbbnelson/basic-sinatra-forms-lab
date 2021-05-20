require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do
        erb :newteam
    end

    post '/newteam' do 
    @name = params["name"]
    @coach = params["coach"]
    @pguard = params["pg"]
    @sguard = params["sg"]
    @sfoward = params["sf"]
    @pforward = params["pf"]
    @center = params["c"]
        erb :team
    end
end
