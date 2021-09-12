using Turing
using Distributions
using Plots

λ1 = Exponential()
λ2 = Exponential()

function generative()
    states = Vector{Int32}(undef,50)
    tau = 35
    p1 = Poisson(23)
    p2 = Poisson(31)

    for i in 1:50
        i < tau ? states[i] = rand(p1) : states[i] = rand(p2)
    end

    return states
end

states = generative()


@model function testing(states)
    λ1 = Exponential()
    λ2 = Exponential()

end