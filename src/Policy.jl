module Policy

export Signal, score, classify

struct Signal
    demand::Int
    capacity::Int
    latency::Int
    risk::Int
    weight::Int
end

const threshold = 161
const risk_penalty = 5
const latency_penalty = 4
const weight_bonus = 5

score(signal::Signal) = signal.demand * 2 + signal.capacity + signal.weight * weight_bonus -
    signal.latency * latency_penalty - signal.risk * risk_penalty

classify(signal::Signal) = score(signal) >= threshold ? "accept" : "review"

end
