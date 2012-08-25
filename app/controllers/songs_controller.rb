class SongsController < ApplicationController

	def index
		@songs = Songs.all
	end
	
	def new
	end
	
	def create
		Songs.create(title: params[:title])
		redirect_to "songs_url"
	end
	
	def show
		@song = Songs.find_by_id(params[:id])
	end
	
	def edit
		@song = Songs.find_by_id(params[:id])
	end
	
	def update
		@song = Songs.find_by_id(params[:id])
		@song.title = params[:title]
		@song.save
		redirect_to "song_url(#{@song.id})"
	end
	
	def destroy
		Songs.find_by_id(params[:id]).destroy
		redirect_to "songs_url"
	end

end
