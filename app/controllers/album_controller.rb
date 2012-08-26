class AlbumController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end
  
  def create
    @album = Album.new
    @album.title = params[:title]
    @album.date = params[:date]
    @album.save
    redirect_to albums_url(@album.id)
  end
  
  def show
    @album = Album.find_by_id(params[:id])
  end
  
  def edit
    @album = Album.find_by_id(params[:id])
  end
  
  def update
    @album = Album.find_by_id(params[:id])
    @album.title = params[:title]
    @album.date = params[:date]
    @album.save
    redirect_to album_url(@album.id)
  end

  def delete
    Album.find_by_id(params[:id]).destroy
    redirect_to albums_url
  end
  
end
