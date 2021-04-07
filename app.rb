# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/tweet'
require './lib/db_connection_setup'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    redirect 'tweets'
  end

  get '/tweets' do
    @tweets = Tweet.all
    erb :'tweets/index'
  end

  get '/tweets/new' do
    erb :'tweets/new'
  end

  post '/tweets' do
    Tweet.create(content: params[:content])
    redirect '/tweets'
  end

  run! if app_file == $PROGRAM_NAME
end
