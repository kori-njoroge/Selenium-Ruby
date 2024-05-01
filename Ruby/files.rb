puts File.exist?('arrayes.rb')
puts File.exist?('arrays.rb')

# write contents in a file
aFile = File.new("Ruby.txt",'w')
aFile.syswrite("I have mastered the basics of Ruby now")
aFile.close

# Reading the conntent of the file
aFile2 = File.open("Ruby.txt","r")
aFile2.each{|line| puts line} 
aFile2.close

# Exception Handling
def read_my_file(file)
    begin
        aFile2 = File.open("#{file}","r")
        aFile2.each{|line| puts line} 
        aFile2.close
    rescue
        raise("file not Found.  Please make sure the file name is correct")
    end
end

read_my_file("arrayes.txt")