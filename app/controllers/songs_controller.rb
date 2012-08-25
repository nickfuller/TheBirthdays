class SongsController < ApplicationController

	def index
		@songs = Songs.all
				
		respond_to do |format|
		  format.html
		  format.json { render :json => @lines }
	  end
	end
	
	def new
	  @song = Songs.new
	end
	
	def create  # Q: How would I rename this to 'upload'
		@song = Songs.new 
		@song.title = params[:title]
		# Q: can we get Songs.create(:title => params[:title]) to work here?
		if @song.save
		  flash[:upload_success] = "#{params[:title]} was uploaded."
		  redirect_to songs_url
		else
		  flash[:upload_fail] = "Please fill in all fields before submitting."
			render 'new'  # Q: how should I think of this 'new' object?
		end	
	end
	
	def show
		@song = Songs.find_by_id(params[:id])
		
		respond_to do |format|
		  format.html
		  format.json { render :json => @lines }
	  end
	end
	
	def edit
		@song = Songs.find_by_id(params[:id])
	end
	
	def update
		@song = Songs.find_by_id(params[:id])
		@song.title = params[:title]
		if @song.update_attributes(params[:songs])  # Q: Why can we access params[:songs] here?
		  flash[:update_success] = "#{params[:title]} was updated."
		  redirect_to songs_url
	  else
	    flash[:update_fail] = "Please fill in all fields before submitting."
	    render 'edit' 
    end	
  end
	
	def destroy
		Songs.find_by_id(params[:id]).destroy
		redirect_to songs_url
	end

end
