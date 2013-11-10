require "no_limits/version"
require "active_record"

module NoLimits
  # Your code goes here...
end

# Monkey patch ActiveRecord::Base
class ActiveRecord::Base
	def self.has limit, name, options = {}
		if limit > 1
			if ActiveRecord::VERSION::MAJOR < 4 # support for active_record versions <= 3
				has_many name.to_sym, { limit: limit }.merge(options)
			else
				has_many name.to_sym, -> { limit(limit) }, options # support for active_record version 4
			end
	  else
	  	has_one name.to_sym, options
	  end
  end
end