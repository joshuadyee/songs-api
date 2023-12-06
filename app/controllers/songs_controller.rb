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
    @song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year]
    )
    @song.save
    render template: "songs/show"
  end
end
