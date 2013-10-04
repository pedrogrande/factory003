Factory003::Application.routes.draw do

  devise_for :users, :skip => :registrations
  resources :users

  get "blog/index", :id => "blog"
  match "blog" => "blog#index"

  get "thanks/index", :id => "thanks"
  match "thanks" => "thanks#index"

  get "admin/index", :id => "admin"
  match "admin" => "admin#index"

  get "contact/index", :id => "contact"
  match "contact" => "contact#index"

  get "community/index", :id => "community"
  match "community" => "community#index"

  get "about/index", :id => "about"
  match "about" => "about#index"

  get "privacy/index", :id => "privacy"
  match "privacy" => "privacy#index"

  get "calendar/index", :id => "calendar"
  match "calendar" => "calendar#index"

  resources :messages
  resources :skills
  resources :courses
  resources :enquiries
  resources :registrations
  resources :intakes
  resources :events
  resources :enrolments

  root :to => "home#index"

  get "sitemap.xml" => "sitemap#index", as: "sitemap", defaults: { format: "xml" }

end