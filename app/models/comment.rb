class Comment < ActiveRecord::Base
  attr_accessible :string, :commenter
end
