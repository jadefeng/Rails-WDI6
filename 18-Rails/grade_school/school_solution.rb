# https://gist.github.com/jadefeng/a405afbfdb9eb58459aa

require 'pry'
system('clear')

class School
	attr_accessor :school_name 
	attr_reader :db


	def initialize(school_name)
		@school_name = school_name
		@db = {}

	end

	def add(name, grade)
		db[grade] ||= [] 	# If db[grade] exists, then return the grade, or else return the empty array
		db[grade] << name 	# Pass in the student!
	end

	def grade(grade_number)
		db[grade_number] || []
	end

	def sort
		# Hash[@db.sort]
		sorted = db.sort_by {|grade, student| student.sort!; grade}
		Hash[sorted]
		# Sorting a hash which doesn't have an order, and sort the students within it
	end
end


school = School.new("GA")
school.add("James", 2)

school.add("Rusli", 2)
school.add("Jade", 3)
school.add("Little Jimmy", 1)
school.db

school.grade(2)


binding.pry