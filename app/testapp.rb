class TestApp < Sinatra::Base

  enable :sessions

  get '/date', :provides => :json do
    date_time = Time.now
    {'date' => Time.now.strftime("%Y-%m-%d")}.to_json
  end

  get '/world' do
    "Hello, World"
  end

  get '/login/:name' do
    session[:name] = params[:name]
  end

  get '/logout' do
    name = session[:name]
    "Goodbye " + name
  end

end
