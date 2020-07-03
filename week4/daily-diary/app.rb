require 'sinatra/base'
require 'pg'
require './lib/diary.rb'

class Diary < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/added' do
    @entry = params[:entry_box]
    @connection.exec("INSERT INTO entry (entry) VALUES('#{@entry}')")
    erb :added
  end

  run! if app_file == $0
end