# rubular.com

#// - begining of the string
# /$/ - End of the string
# /.*/ - Any character of 0 or more
# /word/ = any word matching

word1 = "Hello Man"
word2 ="Hello"
word3 = "matches String"

def match_with_word(string1, string2)
    if string1 =~ /#{string2}/ #finding string 2 in string 1
        puts "String Matches"
    else
        puts "Not a match"
    end        
end

match_with_word(word1, word2)
match_with_word(word1, word2.capitalize)
match_with_word(word1, word3.capitalize)


def match_begining_word(string1, regex_pattern)
    if string1 =~ /#{regex_pattern}/
        puts "#{string1} begins with: '#{regex_pattern}'"
    else
        puts "No match"
    end
end

match_begining_word(word3, "matches")