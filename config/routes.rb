TheBirthdays::Application.routes.draw do

	root :to => 'Home#index'
  get "home" => "Home#index"
# SONGS ROUTES

	get "songs" => "Songs#index", :as => "songs"
	
	get "songs/new" => "Songs#new", :as => "new_song"
	post "songs" => "Songs#create"
	
	get "songs/:id" => "Songs#show", :as => "song"
	
	get "songs/:id/edit" => "Songs#edit", :as => "edit_song"
	put "songs/:id" => "Songs#update", :as => "update_song"
	
	delete "songs/:id" => "Songs#destroy", :as => "destroy_song"
	
# GIGS ROUTES

  get "concerts" => "Gigs#index", :as => "gigs"
    
  get "concerts/new" => "Gigs#new", :as => "new_gig"
  post "concerts" => "Gigs#create"

  get "concerts/:id" => "Gigs#show", :as => "gig"
  
  get "concerts/:id/edit" => "Gigs#edit", :as => "edit_gig"
  put "concerts/:id" => "Gigs#update", :as => "update_gig"
	  
	delete "concerts/:id" => "Gigs#destroy", :as => "destroy_gig"

end
 
