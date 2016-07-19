using SampledSignals
using Compat
import SIUnits

import Compat.view

if VERSION >= v"0.5.0-"
    using Base.Test
else
    using BaseTestNext
end
using FixedPointNumbers

try
    @testset "SampledSignals Tests" begin
        include("DummySampleStream.jl")
        include("SampleBuf.jl")
        include("Interval.jl")
        include("SampleStream.jl")
        include("SignalGen/runtests.jl")
    end
catch err
    exit(-1)
end
