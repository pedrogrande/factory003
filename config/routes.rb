Factory003::Application.routes.draw do
  get "ruby_on_rails_course_scholarship/index", :id => "ruby_on_rails_course_scholarship"
  match "ruby_on_rails_course_scholarship" => "ruby_on_rails_course_scholarship#index"

  resources :scholarships


  resources :posts


  resources :skills


  match '/courses/web-app-coder' => redirect("/courses")
  match '/courses/summer-coder-camp' => redirect("/courses")
  match '/courses/web-app-coder-mon-wed' => redirect("/courses")
  match '/courses/web-app-coder-sundays' => redirect("/courses")
  match '/courses/javascript-coder' => redirect("/courses")
  match '/enrollments/new' => redirect("/enrolments/new")
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