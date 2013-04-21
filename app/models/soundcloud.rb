class Soundcloud < ActiveRecord::Base
  
  client = Soundcloud.new(:client_id => 'CLIENT_ID',
                          :client_secret => 'CLIENT_SECRET',
                          :redirect_uri => 'REDIRECT_URL')

  # redirect user to authorize URL
  redirect_to client.authorize_url()
  
  
end