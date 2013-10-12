class Nugget < ActiveRecord::Base
	validates :name, presence: true
end
