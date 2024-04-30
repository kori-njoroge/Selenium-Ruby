puts File.exist?('arrayes.rb')
puts File.exist?('arrays.rb')

# write contents in a file
aFile = File.new("Ruby.txt",'w')
aFile.syswrite("I have mastered the basics of Ruby now")
aFile.close

# Reading the conntent of the file
aFile2 = File.open("Ruby.txt","r")
aFile2.each{|line| puts line} 