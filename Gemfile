source 'https://rubygems.org'

gem 'slim-rails'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

# Use sqlite3 as the database for Active Record
gem 'mysql2'

gem 'sass-rails'
gem 'bootstrap-sass', '2.3.2.0'

gem 'uglifier'

gem 'coffee-rails'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'compass-rails', github: 'Compass/compass-rails'


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'pry-rails'
  gem 'pry-doc' # see docments 'show-docs' see source 'show-source'
  gem 'pry-stack_explorer' # show-stack command can see stack. up down frame
  gem 'pry-byebug' # you can stop the code when write binding.pry
  gem 'hirb' # show active record like table
  gem 'hirb-unicode' # show active record like table
  gem 'tapp' # add tapp method to object. available print method chain result. ex [1,2,3,4,5].map{|x| x**2}.tapp.select {|x| x>10 }

  #gem 'awesome_print' # debug printing looks be better. add following 2 rows to ~/.pryrc
  # require 'awesome_print'
  # Pry.print = proc{|output,value| output.puts value.ai }

  gem 'better_errors' # make better error window
  gem 'binding_of_caller' # available debug in error window

  gem 'quiet_assets' # stop logging about assets file access.
  gem 'annotate' # bundle exec annotate command writes schema difinition to models.

  gem 'timecop' # temporary availables changing local datetime. Combinient for test usage.
  # ex Timecop.travel(Date.new(2011,10,4))
  # ex Timecop.return

  gem 'colorize_unpermitted_parameters'
  #gem 'rack-mini-profiler'
  gem 'xray-rails' # show UI bones by cmd+shift+x(mac) ctrl+shift+x
  # u can open file by click. ~/.xrayconfig add row. :editor: '/usr/local/bin/mine'
end

# Use debugger
# gem 'debugger', group: [:development, :test]
