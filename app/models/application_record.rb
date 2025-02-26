class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

# rails g model restaurant name category adress phone_number:integer
# rails g model review rating:integer content:text restaurant:references
