source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.3'
gem 'bcrypt', '~> 3.1.12'
gem 'faker', '>= 1.7.3'
gem 'carrierwave', '>= 1.2.2'
gem 'mini_magick', '>= 4.7.0'
gem 'will_paginate', '>= 3.1.6'
gem 'bootstrap-will_paginate', '>= 1.0.0'
gem 'bootstrap-sass', '3.4.1'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'jquery-rails', '>= 4.3.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'annotate'
end

group :test do
  gem 'rails-controller-testing', '>= 1.0.2'
  gem 'minitest',                 '>= 5.10.3'
  gem 'minitest-reporters',       '>= 1.1.14'
  gem 'guard',                    '>= 2.13.0'
  gem 'guard-minitest',           '>= 2.4.4'
end
group :production do
  gem 'pg', '>= 0.20.0'
  gem 'fog', '>= 1.42'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
