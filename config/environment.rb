# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Emailqueue::Application.initialize!

#Force Rails into Productin Mode when I dont control web/app server & cant set it the proper way.
#Un-Comment the next line :

# ENV['RAILS_ENV']||='production'
