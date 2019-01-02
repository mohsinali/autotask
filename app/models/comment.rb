class Comment < ApplicationRecord
	#Associations
	belongs_to :commentable, polymorphic: true
	belongs_to :user
end
