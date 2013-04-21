class VersesController < ApplicationController
  respond_to :json
  
  def index
    @verses = CloudAudioProvider.new.grab_tracks
    respond_with(@verses)
  end
  
end
