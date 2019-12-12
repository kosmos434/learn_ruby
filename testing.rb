# min_num = nil
# [65,3,100,42,-7].each do |num|
#    min_num = num if min_num == nil || min_num > num
#    puts min_num
# end


# min_answer = [65,3,100,42,-7].inject do |min_num, num| 
#    min_num =  min_num > num ? num : min_num
# end      
# puts min_answer


# fibonacci
# arr = [0,1]
# 18.times do
#     arr << arr[-2] + arr[-1]
# end  

# puts arr.join(", ")


# data_arr = [['dog', 'Fido'], ['cat', 'Whiskers'], ['fish', 'Fluffy']]

# data_hash = {}
# data_arr.each do |d|
#     data_hash[d[0]] = d[1]
# end

# puts data_hash

# data_arr = [['dog', 'Fido'], ['cat', 'Whiskers'], ['fish', 'Fluffy']]

# # note that the default accumulator here is {}, an empty hash
# data_hash = data_arr.inject({}) do |hsh, v|
#     hsh[v[0]] = v[1]
#     # remember to have hsh the last line to return it
#     hsh
# end

# puts data_arr


