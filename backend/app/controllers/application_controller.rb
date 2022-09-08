class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
   
  # Add your routes here
  get "/" do
    { message: "The GET route works! Let's begin." }.to_json
  end


end
