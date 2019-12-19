class Book
# write your code here
    attr_accessor :title

    def title
        newStr = @title.capitalize.split()
        conjunctions = ["a", "an", "and", "in", "of", "the"]
        # Capitalize non conjunctions
        newStr.map! { |x| conjunctions.include?(x) ? x : x.capitalize }
        newStr.join(" ")
    end

end
