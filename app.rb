require 'sinatra/base'
require 'sinatra/reloader'
require './lib/tweet'

class Chitter < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
        "Chitter"
    end

    get '/tweets' do
        @tweets = Tweet.all
        erb :tweets
    end

    run! if app_file ==$0
end