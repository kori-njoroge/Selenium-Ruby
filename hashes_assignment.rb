# Get all the keys from the celebrity_hash. 
celebrity_hash = {'Beyonce' => 252424, 'Michael Jackson' => 4243433, 'Sam Smith' => 52134434, 'Taylor Swift' => 7534343, 'Tommy Smith' => 523232}

print celebrity_hash.keys
puts " "
# Get all the values from the celebrity_hash.
celebrity_hash = {'Beyonce' => 252424, 'Michael Jackson' => 4243433, 'Sam Smith' => 52134434, 'Taylor Swift' => 7534343, 'Tommy Smith' => 523232}

print celebrity_hash.values
puts " "

# Using each loop, print out each element of the celebrity_hash.
celebrity_hash = {'Beyonce' => 252424, 'Michael Jackson' => 4243433, 'Sam Smith' => 52134434, 'Taylor Swift' => 7534343, 'Tommy Smith' => 523232}

celebrity_hash.each{|element|
    puts "#{element}"
}

# Using each loop with two parameters (k,v), print out each key and value of each element.
celebrity_hash = {'Beyonce' => 252424, 'Michael Jackson' => 4243433, 'Sam Smith' => 52134434, 'Taylor Swift' => 7534343, 'Tommy Smith' => 523232}

celebrity_hash.each{|k,v|
    puts "#{k}'s ssn is #{v}"
}