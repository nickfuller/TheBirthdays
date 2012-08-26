TheBirthdays::Application.routes.draw do

	root :to => 'Home#index', :as => "home"
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
	
# FANS ROUTES
  get "fans" => "Fans#index", :as => "fans"
  
  get "fans/new" => "Fans#new", :as => "new_fan"
  post "fans" => "Fans#create"
  
  get "fans/:id" => "Fans#show", :as => "fan"
  
  get "fans/:id/edit" => "Fans#edit", :as => "edit_fan"
  put "fans/:id" => "Fans#update", :as => "update_fan"
    
  delete "fans/:id" => "Fans#destroy", :as => "destroy_fan"
  
# ALBUM ROUTES
  get "albums" => "Album#index", :as => "albums"
  
  get "albums/new" => "Album#new", :as => "new_album"
  post "albums" => "Album#create"
  
  get "albums/:id" => "Album#show", :as => "album"
  
  get "albums/:id/edit" => "Album#edit", :as => "edit_album"
  put "albums/:id" => "Album#update", :as => "update_album"
  
  delete "albums/:id" => "Album#destroy", :as => "destroy_album"

end
 
