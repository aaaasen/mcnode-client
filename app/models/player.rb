class Player < ActiveRecord::Base
  attr_accessible :username, :last_login, :online
end
