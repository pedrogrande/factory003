source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.13'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'devise'
gem 'simple_form'
gem "friendly_id"
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
end
group :development, :test do
  gem 'thin'
  gem 'sqlite3'
end
group :production do
  gem 'unicorn'
  gem 'newrelic_rpm'
  gem 'pg'
end