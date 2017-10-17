using chitchat
using Base.Test

# write your own tests here
@test 1 == 1
@test reduce(add_ab, [1 2 3 4 5]) == 15
