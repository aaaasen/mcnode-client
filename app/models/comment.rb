class Comment < ActiveRecord::Base
  attr_accessible :content, :player_id, :commenter

  belongs_to :player
end
