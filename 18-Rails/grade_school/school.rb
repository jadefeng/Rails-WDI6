## Fcked this up hard. No idea how to do this.

require 'pry'
class School
	attr_accessor :school_name, :student_record, :grade, :name
	# attr_reader :db

	def initialize(school_name)
		@school_name = school_name
		# @db = {}
		@student_record = []
		@grade = grade
		@name = name
	end

	def db
		p @student_record
	end

	def add(student_name, student_grade)
		@name = student_name
		@grade = student_grade
		@student_record << [student_grade, student_name]
		# @grade << @student 
	end

	def grade(grade)
		p @grade[grade]
	end

	def sort

	end

end

school = School.new("GA")
school.add("Jade", 2)
school.add("Sarah", 2)
school.add("John", 4)

binding.pry 
