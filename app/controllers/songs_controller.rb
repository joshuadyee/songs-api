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

  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:title] || @song.title
    @song.album = params[:album] || @song.album
    @song.artist = params[:artist] || @song.artist
    @song.year = params[:year] || @song.year
    @song.save
    render template: "songs/show"
  end

  def destroy
    @song = Song.find_by(id: params[:id])
    @song.destroy
    render json: {message: "Song Deleted"}
  end
end
