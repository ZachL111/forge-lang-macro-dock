include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(76, 78, 15, 23, 9)
@assert score(signal_case_1) == 100
@assert classify(signal_case_1) == "review"
signal_case_2 = Signal(76, 77, 23, 9, 7)
@assert score(signal_case_2) == 127
@assert classify(signal_case_2) == "review"
signal_case_3 = Signal(72, 100, 12, 17, 5)
@assert score(signal_case_3) == 136
@assert classify(signal_case_3) == "review"
