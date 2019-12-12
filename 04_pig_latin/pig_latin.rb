#write your code here

# def translate(word)
#     newWord = ""
#     vowels = ["a", "e", "i", "o", "u"]
#     if vowels.include?(word[0].downcase)
#         word += "ay"
#     elsif !vowels.include?(word[0].downcase) and !vowels.include?(word[1])
#         newWord = word[2..-1] + word[0..1] + "ay" 
#     else
#         newWord = word[1..-1] + word[0] + "ay"
#     end
# end



def translate(string)
    newArr = []
    vowels = ["a", "e", "i", "o", "u"]
    
    # * Split it into words
    words = string.split()

    # * For every word in the sentence...
    words.each do |word|
        # * If the word has 'qu'
        if word[1..2].downcase == "qu"
            newArr << word[3..-1] + word[0..2] + "ay"

        elsif word[0..1].downcase == "qu"
            newArr << word[2..-1] + word[0..1] + "ay"

        # * If it starts with a vowel
        elsif vowels.include?(word[0].downcase)
            newArr << word + "ay"

        # * If the first three consonants aren't vowels
        elsif not vowels.include?(word[0].downcase) and not vowels.include?(word[1]) and not vowels.include?(word[2])
            newArr << word[3..-1] + word[0..2] + "ay" 
        # * ...or if the first two consonants aren't vowels
        elsif not vowels.include?(word[0].downcase) and not vowels.include?(word[1])
            newArr << word[2..-1] + word[0..1] + "ay" 
        
        # * After all that, if it starts with one consonant
        else
            newArr << word[1..-1] + word[0] + "ay"
        end
    end

    newArr.join(" ")
end



# puts translate("apple")
# puts translate("brapple")
# puts translate("apple dapple")
# puts translate("three")
# puts translate("quiet")
