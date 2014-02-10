source 'https://rubygems.org'

ruby '2.1.0'

gem 'rails', '4.0.2'
gem 'sass-rails', '~> 4.0.1'
gem 'uglifier', '~> 2.4.0'
gem 'coffee-rails', '~> 4.0.1'
gem 'jquery-rails', '~> 3.1.0'
gem 'turbolinks', '~> 2.2.1'
gem 'jbuilder', '~> 2.0.2'
gem 'bcrypt-ruby', '~> 3.1.2'
gem 'bootstrap-sass', '~> 3.1.0.2'
gem 'kaminari', '~> 0.15.0'
gem 'friendly_id', '~> 5.0.2'
gem 'font-awesome-sass', '~> 4.0.2'

group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'sqlite3', '~> 1.3.8'    # dev & test database
  gem 'figaro', '~> 0.7.0'     # env variables
  gem 'rails_layout', '~> 1.0.5'  # Bootstrap 3 layout generator
  gem 'better_errors'
  gem 'rspec-rails', '~> 2.14.1'
  gem 'factory_girl_rails', '~> 4.3.0'
end

group :test do
  gem 'capybara', '~> 2.2.1'
  gem 'database_cleaner', '~> 1.2.0'
end

# production gems for heroku
group :production do
  gem 'pg'
  gem 'rails_12factor'
end