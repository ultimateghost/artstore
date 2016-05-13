source 'https://rubygems.org'

gem "devise"
gem "bootstrap-sass"
gem "simple_form"
gem "carrierwave"
gem "mini_magick"
gem "font-awesome-rails"
gem "aasm"
gem "letter_opener", group: :development
gem "roadie", "2.4.3"
gem "pay2go"

gem 'rails', '4.2.2'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'sqlite3'   # => 把 SQLite 放到開發環境
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :production do  # => 正式環境使用 PostgresSQL
  gem "pg"
  gem "rails_12factor"  # => rails_12factor 是 deploy 到 heroku 的 hack 懶人包
end
