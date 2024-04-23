# Loopig - seaquence of instructions that is continually repeated until a certain condition is reached
# looping is used to iterate over the range of number, text array elements, hash elements and so on.

# printing "hello world 10 times"

# For loop
# for i in 1..10
#     puts "Hello world #{i}"
# end

#  find a number greater than 2
for i in 1..10
    if i > 2 then 
        puts "The value of i is #{i}"
    end
end

# find even numbers in 0..10
for i in 0..10
    if i%2 == 0 then
        puts "#{i} is an even number"
    end
end