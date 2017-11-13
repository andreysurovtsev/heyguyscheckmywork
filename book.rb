class Book
	attr_accessor :title, :author, :description, :content

	@@publisher = "Educator LLC"

	def initialize(title, author, description, content)
		@title		= title
		@author		= author
		@description	= description
		@content	= content
	end

	def summary
		"Publisher: #{@@publisher} - #{@descritpion[0..150]}..."
	end

	def word_count
		content.split.size
	end
end
