using Flux.Data
using Test

@test cmudict()["CATASTROPHE"] == :[K,AH0,T,AE1,S,T,R,AH0,F,IY0].args

@test length(CMUDict.phones()) == 39

@test length(CMUDict.symbols()) == 84

@test MNIST.images()[1] isa Matrix
@test MNIST.labels() isa Vector{Int64}

@test FashionMNIST.images()[1] isa Matrix
@test FashionMNIST.labels() isa Vector{Int64}

@test Data.Sentiment.train() isa Vector{Data.Tree{Any}}

@test Iris.features() isa Matrix
@test size(Iris.features()) == (4,150) 

@test Iris.labels() isa Vector{String}
@test size(Iris.labels()) == (150,)

@test Housing.features() isa Matrix
@test size(Housing.features()) == (506, 13)

@test Housing.targets() isa Array{Float64}
@test size(Housing.targets()) == (506, 1)
