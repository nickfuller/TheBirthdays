class GigsController < ApplicationController

  def index
    
    @gigs = Gigs.all
    @gig = Gigs.new
      # if DateTime.parse "#{@gig.date}" < DateTime.now
      # else
      
    # @upcoming_gigs =
    
    # @past_gigs = 
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
    redirect_to gigs_url    
  end
  
  def show
    @gig = Gigs.find_by_id(params[:id])
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
    flash[:deleted] = "That gig just got poned."    
  end

end