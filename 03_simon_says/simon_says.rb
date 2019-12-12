#write your code here
def echo words
    words
end


def shout words
    words.upcase
end


# def repeat(words, *num)
#     "#{words} #{words}"
# end


def repeat(word, num=2)
    string = word
    (num - 1).times do
        string +=  " #{word}"
    end
    string
end


def start_of_word(word, num)
    num -= 1
    word[0..num]
end


def first_word(word)
    tempArray = word.split()
    tempArray[0]
end


# def titleize(word)
#     newWord = word.split()
#     newWord.each do |x|
#         x[0]
#     end
# end   


# ! refactor this ugly thing
# def titleize(word)
#     tempArray = word.split()
#     newArray = []
#     newString = ""
#     newestString = ""
#     # upArray = tempArray.map { |string| string.upcase() }
#     tempArray.each do |string|
#         if ["and", "the", "or", "over"].include?(string)
#             newArray << string
#         else
#             newArray << string[0].upcase + string[1..-1]
#         end
#     end
#     newString = newArray.join(" ")
#     newestString = newString[0].upcase + newString[1..-1]
# end


# * better...
def titleize(word)
    new = word.split
    new[0].capitalize!
    new.each { |x| ["and", "the", "or", "over"].include?(x) ? x: x.capitalize! }
    new.join(" ")
end
