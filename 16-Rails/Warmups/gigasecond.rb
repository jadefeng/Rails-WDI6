## A gigasecond is one billion seconds. Figure out when you turn(ed) 1 gigasecond old.

require 'pry'
require 'time'

puts "What year were you born?"
answer_year = gets.chomp
puts "What month were you born?"
answer_month = gets.chomp
puts "What day were you born?"
answer_day = gets.chomp


birth_time = answer_year+"-"+answer_month+"-"+answer_day
p time_born = Time.parse(birth_time)
p giga_old = time_born + 1000000000
string_time_born = time_born.strftime("%d %b %Y")
string_giga_old = giga_old.strftime("%d %b %Y")

puts "You were born on #{string_time_born} and turned 1 gigasecond old on #{string_giga_old}."
