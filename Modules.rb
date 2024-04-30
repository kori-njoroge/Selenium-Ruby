
# MODULES
# > Modules also called "Mixins"  are way of grouping together methods, classes and constants
# > Enables us to do multiple inheritance i.e to inherit from two or more classes
# > Unlike classes, you cannot create objects based on modules nor can you subclass them
# > Modules act as namespace and thus we can mix in more than one module in a class

module A
    def a1
        puts "I am a1"
    end
    def a2
        puts "I am a2"
    end
end

module B
    def b1
        puts "I am b1"
    end
    def b2
        puts "I am b2"
    end
end

module C
    def c1
        puts "I am c1"
    end
    
    def c2
        puts "I am c2"
    end
end

module D
    def d
        puts "I am d"
    end
end


# Module with multiple modules
module BigSample
    class Sample
        include A
        include B
        include C
        include D
        def s1
            puts "I am s1"
        end
    end
end

# Creating an object for BigSample module
big1 = BigSample::Sample.new
big1.a1
big1.a2
big1.b1
big1.b2
big1.c1
big1.c2
big1.d
big1.s1