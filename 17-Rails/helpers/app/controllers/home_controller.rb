class HomeController < ApplicationController
	def home
	end

	def numbers
		@amount = 123
		@large_number = 129529239481027311
		@phone = 12572132341
	end 

	def text
		@numbers = (1..20).to_a
		@person_count1 = 1
		@person_count2 = 2
		@story = "Once upon a time in a far away land ... "
		
	end

	def assets
	end

	def url
	end

end