class Message < ApplicationRecord

	belongs_to :conversation
  	belongs_to :user

  	# this makes sure a message has some body (it's not empty), has a user_id and a conversation_id
  	validates_presence_of :body, :conversation_id, :user_id

  	# used in views for a nice format of time message was created
  	def message_time
    	created_at.strftime("%m/%d/%y at %l:%M %p")
  	end




end
