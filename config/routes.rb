TheBirthdays::Application.routes.draw do
  
	#root :to => 'welcome#index'

# SONGS ROUTES
	get "songs" => "Songs#index", :as => "songs"
	
	get "songs/new" => "Songs#new", :as => "new_song"
	post "songs" => "Songs#create"
	
	get "songs/:id" => "Songs#show", :as => "song"
	get "songs/:id/edit" => "Songs#edit", :as => "edit_song"
	
	put "songs/:id" => "Songs#update", :as => "update_song"
	
	delete "songs/:id" => "Songs#destroy", :as => "destroy_song"
	
# GIGS ROUTES
  get "performances" => "Gigs#index"
  
  get "performances/new" => "Gigs#new"
  post "performances" => "Gigs#create"
  
  
	
end
