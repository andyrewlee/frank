class ApplicationController < Sinatra::Base
  use Rack::MethodOverride
  enable :sessions
  set :views, File.expand_path('../../views', __FILE__)
end
