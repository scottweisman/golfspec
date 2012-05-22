source 'http://rubygems.org'

gem 'rails', '3.2.3'
gem 'rake', '0.9.2.2'
gem 'jquery-rails'

group :development do
  gem 'sqlite3' 
  gem 'thin'
  gem 'quiet_assets' 
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier'
  gem 'bootstrap-sass', '~> 2.0.1'
end

group :test do 
	gem 'faker'
	gem 'capybara'
	gem 'launchy'
	gem 'database_cleaner'
end

group :production do
  gem 'pg'
end