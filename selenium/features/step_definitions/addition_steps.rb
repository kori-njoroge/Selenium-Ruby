Given('I have two numbers {int} and {int}') do |arg1, arg2|
        @num1 = arg1
        @num2 = arg2
    end
    
    When('I click on the Add button') do
        calc = Addition.new
        @output = calc.add(@num1, @num2)
    end
    
    Then('the output should be {int}') do |sum|
        puts @output
        if sum.to_i == @output
            puts "test passed"
        else
            fail "Test failed"
        end
    end