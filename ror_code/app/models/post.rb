class Post < ApplicationRecord
	#associations
	belongs_to :user
	has_many :comments, dependent: :destroy

	#validation
	validates_presence_of :title
end
