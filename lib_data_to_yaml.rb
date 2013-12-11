require 'yaml'

lib_data = {

	:books => {:bringing_it_to_the_table => {:title => "Bring it to the Table",
																					 :author => "Wendell Berry"},
						 :omnivores_dilemma => {:title => "Omnivores Dilemma",
						 															 :author => "Michael Pollan"},
						 :in_defense_of_food => {:title => "In Defense of Food",
						 												 :author => "Michael Pollan"}
						}
}

f = File.open(ARGV.first || 'lib_data', "w")
f.puts lib_data.to_yaml
f.close