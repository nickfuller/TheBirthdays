class GigsController < ApplicationController

  def index
    
    @past_gigs = Gigs.where("date < ?", DateTime.now).order('date desc')
    @upcoming_gigs = Gigs.where("date > ?", DateTime.now).order('date asc')
    
    respond_to do |format|
		  format.html
		  format.json { render :json => @gigs }
	  end

    
    # require "date"
    # if DateTime.parse "#{@gig.date}" < DateTime.now
    #   ## put @gig in "past shows"
    # else 
    #   ## put @gig in "upcoming shows"
    # end
  end

  def new
    @gig = Gigs.new
  end

  def create
    @gig = Gigs.new
    @gig.date = params[:date]
    @gig.venue = params[:venue]
    @gig.cost = params[:cost]
    @gig.save
    if @gig.save
      flash[:gig_created] = "Gig at #{@gig.venue} created!"
      redirect_to gigs_url 
    end   
  end
  
  def show
    @gig = Gigs.find_by_id(params[:id])
    # Q: Is it a better practice to seperate out the variables and go:
    #    gig_id = params[:id]
    #    @gig = Gigs.find_by_id(gig_id)
    
    respond_to do |format|
		  format.html
		  format.json { render :json => @gig }
    end
  end

  def edit
    @gig = Gigs.find_by_id(params[:id])
  end
  
  def update
    @gig = Gigs.find_by_id(params[:id])
    @gig.date = params[:date]
    @gig.venue = params[:venue]
    @gig.cost = params[:cost]
    @gig.save
    redirect_to gig_url(@gig.id)
  end
  
  def destroy
    Gigs.find_by_id(params[:id]).delete
    redirect_to gigs_url
    flash[:gig_deleted] = "That gig just got poned."    
  end

end