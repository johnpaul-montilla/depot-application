source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'webpacker', '~> 3.0'
gem 'jquery-rails'


gem 'rails', '~> 5.1.7'
gem 'sqlite3'
gem 'mysql2', '~> 0.5.2'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '~> 3.1.7'

gem 'devise'
gem 'hirb', '~> 0.7.3'
gem 'better_errors', '~> 2.5', '>= 2.5.1'
gem 'i18n-js'
gem 'kaminari'
gem 'administrate-field-paperclip', '~> 0.0.5'
gem 'paperclip', '~> 6.1'
gem 'administrate'
gem 'pundit'






group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
