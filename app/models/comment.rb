class Comment < ActiveRecord::Base
  attr_accessible :content, :player_id

  belongs_to :player
end
