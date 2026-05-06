include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(50, 33, 11, 51)
@assert score(item) == 151
@assert lane(item) == "ship"
