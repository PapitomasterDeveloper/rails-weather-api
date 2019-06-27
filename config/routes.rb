Rails.application.routes.draw do
  get 'locations/app/controllers/api/v1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	namespace :api do
		namespace :v1 do
			resources :locations do
				resources :recordings
			end
		end
	end

	resources :locations

end
