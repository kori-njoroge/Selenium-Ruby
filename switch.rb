# SWITCH CASE 
grade = 'A'

case (grade.upcase)
when 'A+','A','A-'
    puts "Great Student"
when 'B+','B','B-'
    puts "Good Student"
when 'C+','C','C-'
    puts 'Poor student'
when 'D+','D','D-'
    puts "Very Poor Student"
else
    puts 'Failed'
end


# USING ..

credit_score = 750

case (credit_score)
when  750..850
    puts "You have exellent credit"
when 650..749
    puts "You are approved for loan insterest of 4.0"
when 500..649
    puts "You are approved for a loan interest of 6.0"
else 
    puts "You are not pre-approved sorry"
end
