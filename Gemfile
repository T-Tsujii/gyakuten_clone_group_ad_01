source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

gem "administrate"
gem "annotate"
gem "bootsnap", ">= 1.4.2", require: false
gem "carrierwave"
gem "coderay"
gem "devise"
gem "devise-bootstrap-views", "~> 1.0"
gem "devise-i18n"
gem "flatpickr"
gem "fog-aws"
gem "gon"
gem "jbuilder", "~> 2.7"
gem "kaminari"
gem "letter_opener_web", group: :development
gem "pg", ">= 0.18", "< 2.0"
gem "pry-byebug"
gem "pry-doc"
gem "puma", "~> 4.3"
gem "rails", "6.0.2.1"
gem "rails-i18n", "~> 6.0"
gem "redcarpet"
gem "rmagick"
gem "roo"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rubocop-rails", require: false
  gem "rubocop-rspec"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end
