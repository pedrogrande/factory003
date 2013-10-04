class Message < ActiveRecord::Base
	default_scope order: 'messages.priority ASC'

	attr_accessible :icon, :title, :content, :active, :priority
end
