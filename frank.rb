require 'sinatra/base'
require 'active_record'
require 'bcrypt'

Dir.glob('./{controllers,models}/*.rb').each { |file| require file }
ENV['SINATRA_ENV'] ||= "development"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
