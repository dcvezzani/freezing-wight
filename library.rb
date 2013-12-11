require 'yaml'

class Library

	def initialize(options)
		begin
			@lib_files = YAML.load(File.open(options[:lib_data]).read)
		rescue
			raise "Can't load library data file"
		end
	end

	def books_owned
		puts @lib_files
	end

end