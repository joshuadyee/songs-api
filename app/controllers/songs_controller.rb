class SongsController < ApplicationController
  def index
    @songs = Song.all
    render template: "songs/index"
  end

  def show
    @song = Song.find_by(id: params[:id])
    render template: "songs/show"
  end

  def create
    song = Song.new(
      title: "Black Beatles",
      album: "SremmLife 2",
      artist: "Rae Sremmurd",
      year: "2016"
    )
    song.save
    render json: {song: song}
  end
end
