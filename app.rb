require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    'Hello'
  end

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @user = params[:name]
      puts "Goodbye, #{@user}."
    # end.first
    # erb :'/goodbye/show.html'
  end

end
