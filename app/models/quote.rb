class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 500, :minimum => 5 }
	validates :author, :presence =>true, :length => { :maximum => 50, :minimum => 3 }

	def unique_tag
		self.author[0] + "#" + self.id.to_s

	# 	abbr = self.author.split(" ").collect do |sub_string|
	# 		sub_string[0]
	# 	end

	# 	abbr.join + "#" + self.id.to_s
	end

end
