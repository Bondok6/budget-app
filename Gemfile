source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.4'
gem 'bootsnap', require: false
gem 'devise'
gem 'ffi'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.3'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 6.0.0.rc1'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
