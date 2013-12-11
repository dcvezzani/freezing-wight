# Required files
require './library'
require 'yaml'

# Initialize library with proper data file
library = Library.new(:lib_data => ARGV[0])

# Navigation methods

# Client greets user with number of books in library
# and any books that are presently checked out to others
def greet
	puts "Hello there! Welcome back."
	sleep(1)
	puts "Here are your options:"
	sleep(1)
end

def nav_options
	nav_list = ["1.) Books owned", "2.) Add Book", "3.) Remove Book", "4.) Exit"]
	nav_list.each { |x| puts x }
end

# Client greets user and presents user with a list of options

greet

while true
	nav_options
	nav_choice = STDIN.gets.chomp
	case nav_choice
	when "1"
		puts "Here is a list of the books you own"
		library.books_owned
	when "2"
		puts "Please enter the following information about
		the book you wish to add to your library:"
		library.new_book
	when "3"
		puts "Please select which book you wish to remove
		from your library:"
		library.remove_book
	when "4"
		puts "See you next time!"
		sleep(1)
		break
	else
		"Please enter a choice between 1 and 4"
	end
end

