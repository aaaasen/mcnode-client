class Player < ActiveRecord::Base
	attr_accessible :username, :last_login, :online

	validates :username, :presence => true,
						:length => { :minimum => 6, :maximum => 30 },
						:uniqueness => true

	self.primary_key = :username

	has_many :comments
end
