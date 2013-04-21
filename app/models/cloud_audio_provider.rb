class CloudAudioProvider
  require 'soundcloud'
  def grab_tracks
    client = Soundcloud.new(:client_id => ENV["CLIENT_ID"],
                          :client_secret => ENV["CLIENT_SECRET"],
                          :username => ENV['USERNAME'],
                          :password => ENV['PASSWORD'])
    client.get('/me/tracks')
  end
end