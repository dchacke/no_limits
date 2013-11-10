require "no_limits/version"
require "active_record"

module NoLimits
  # Your code goes here...
end

# Monkey patch ActiveRecord::Base
class ActiveRecord::Base
	def self.has limit, name, options = {}
		if limit > 1
	    has_many name.to_sym, -> { limit(limit) }, options
	  else
	  	has_one name.to_sym, options
	  end
  end
end