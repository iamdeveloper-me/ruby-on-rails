class Comment < ApplicationRecord
	#associations
	belongs_to :user
	belongs_to :post

	#validation
	validates_presence_of :comment
end
