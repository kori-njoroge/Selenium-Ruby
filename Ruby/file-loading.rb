# Require files

# Load - read and write everytime you call load
load "variable_types.rb"
file1 = Customer.new(45654, "Gideon","Belmont MA")
file1.display_info

# # Require - read and parse file only once
# # require "Ruby.txt" - you can only require ruby files.
require "/Users/GideonKoriNjoroge/Documents/Kori/Selenium-Ruby/variable_types.rb"
file1 = Customer.new(45654, "Gideon","Belmont MA")
file1.display_info


# Require_Relative
require_relative '/Users/GideonKoriNjoroge/Documents/Kori/Selenium-Ruby/variable_types.rb'
file1 = Customer.new(45654, "Gideon","Belmont MA")
file1.display_info


require 'Time'
t1 = Time.now
puts t1