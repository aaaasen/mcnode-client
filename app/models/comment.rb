class Comment < ActiveRecord::Base
  attr_accessible :content, :commenter

  belongs_to :player
end
