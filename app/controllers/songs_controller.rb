class SongsController < ApplicationController
  def index
    @songs = Song.all
    render template: "songs/index"
  end

  def show
    @song = Song.find_by(id: params[:id])
    render template: "songs/show"
  end
end
