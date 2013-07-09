require 'tagfile/tagfile'

class TracksController < ApplicationController
  respond_to :json

  def   download
    debugger
  end

  def   upload
    user = User.find_by_authentication_token(params[:auth_token])
    if user.nil?
      logger.info("Token not found.")
      render :status=>404, :json=>{:message=>"Invalid token."}
    end
    hash = {}
    hash[:title] = params[:song].original_filename
    hash[:song] = params[:song]
    track = Track.new(hash)
    if !track.save
      put "O HELL YAH"
    end
    debugger
    render :status => 201, :json => {:message => "Song has been uploaded"}
  end

end
