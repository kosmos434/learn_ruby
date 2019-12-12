class Book
# write your code here
    attr_accessor :title


    def title
        newStr = @title.split()
        conjunctions = ["a", "an", "and", "in", "of", "the"]
        # First word always capped (even "the")
        newStr[0].capitalize!
        # not in ["an", "the", "a", "in"]
        newStr.map! { |x| conjunctions.include?(x) ? x : x.capitalize }
        newStr.join(" ")
    end
end
