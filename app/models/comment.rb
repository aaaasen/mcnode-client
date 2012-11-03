class Comment < ActiveRecord::Base
  attr_accessible :content, :player

  belongs_to :player
end
