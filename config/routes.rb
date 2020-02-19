Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET 'restaurants', to: 'restaurants#index'
  # # She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET 'restaurants/new', to: 'restaurants#new'
  # POST 'restaurants', to: 'restaurants#create'
  # # She/He can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET 'restaurants/:id', to: 'restaurants#show'
  # # She/He can add a new review to a restaurant
  # GET 'restaurants/:id/reviews/new', to: 'reviews#new'
  # POST 'restaurants/:id/reviews', to: 'reviews#create'

  resources :restaurants do
    # need to nest these because we need the restaurant ID
    resources :reviews, only: [:new, :create,]
  end
end
